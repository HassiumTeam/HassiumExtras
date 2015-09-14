#region License

// Copyright (c) 2013 Chandramouleswaran Ravichandran
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#endregion

using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using Microsoft.Practices.Unity;
using Wide.Core.Attributes;
using Wide.Interfaces;
using Wide.Interfaces.Services;
using Microsoft.Win32;

namespace HDevelop.Core
{
    [FileContent("Hassium code files", "*.has", 1)]
    [NewContent("Hassium code file", 1, "Creates a new Hassium file", "pack://application:,,,/HDevelop.Core;component/Icons/Hassium64.png")]
    internal class HSHandler : IContentHandler
    {
        /// <summary>
        /// The injected container
        /// </summary>
        private readonly IUnityContainer _container;

        /// <summary>
        /// The injected logger service
        /// </summary>
        private readonly ILoggerService _loggerService;
        
        /// <summary>
        /// The save file dialog
        /// </summary>
        private SaveFileDialog _dialog;

        /// <summary>
        /// Constructor of HSHandler - all parameters are injected
        /// </summary>
        /// <param name="container">The injected container of the application</param>
        /// <param name="loggerService">The injected logger service of the application</param>
        public HSHandler(IUnityContainer container, ILoggerService loggerService)
        {
            _container = container;
            _loggerService = loggerService;
            _dialog = new SaveFileDialog();
        }

        #region IContentHandler Members

        public ContentViewModel NewContent(object parameter)
        {
            var vm = _container.Resolve<HSViewModel>();
            var model = _container.Resolve<HSModel>();
            var view = _container.Resolve<HSView>();

            //Model details
            _loggerService.Log("Creating a new simple file using HSHandler", LogCategory.Info, LogPriority.Low);

            //Clear the undo stack
            model.Document.UndoStack.ClearAll();

            //Set the model and view
            vm.SetModel(model);
            vm.SetView(view);
            vm.Title = "untitled.has";
            vm.View.DataContext = model;
            vm.SetHandler(this);
            model.SetDirty(true);

            return vm;
        }

        /// <summary>
        /// Validates the content by checking if a file exists for the specified location
        /// </summary>
        /// <param name="info">The string containing the file location</param>
        /// <returns>True, if the file exists and has a .md extension - false otherwise</returns>
        public bool ValidateContentType(object info)
        {
            string location = info as string;
            string extension = "";

            if (location == null)
            {
                return false;
            }

            extension = Path.GetExtension(location);
            return File.Exists(location) && extension == ".has";
        }

        /// <summary>
        /// Opens a file and returns the corresponding HSViewModel
        /// </summary>
        /// <param name="info">The string location of the file</param>
        /// <returns>The <see cref="HSViewModel"/> for the file.</returns>
        public ContentViewModel OpenContent(object info)
        {
            var location = info as string;
            if (location != null)
            {
                HSViewModel vm = _container.Resolve<HSViewModel>();
                var model = _container.Resolve<HSModel>();
                var view = _container.Resolve<HSView>();

                //Model details
                model.SetLocation(info);
                try
                {
                    model.Document.Text = File.ReadAllText(location);
                    model.SetDirty(false);
                }
                catch (Exception exception)
                {
                    _loggerService.Log(exception.Message, LogCategory.Exception, LogPriority.High);
                    _loggerService.Log(exception.StackTrace, LogCategory.Exception, LogPriority.High);
                    return null;
                }

                //Clear the undo stack
                model.Document.UndoStack.ClearAll();

                //Set the model and view
                vm.SetModel(model);
                vm.SetView(view);
                vm.Title = Path.GetFileName(location);
                vm.View.DataContext = model;

                return vm;
            }
            return null;
        }

        public ContentViewModel OpenContentFromId(string contentId)
        {
            string[] split = Regex.Split(contentId, ":##:");
            if (split.Count() == 2)
            {
                string identifier = split[0];
                string path = split[1];
                if (identifier == "FILE" && File.Exists(path))
                {
                    return OpenContent(path);
                }
            }
            return null;
        }

        /// <summary>
        /// Saves the content of the HSViewModel
        /// </summary>
        /// <param name="contentViewModel">This needs to be a HSViewModel that needs to be saved</param>
        /// <param name="saveAs">Pass in true if you need to Save As?</param>
        /// <returns>true, if successful - false, otherwise</returns>
        public virtual bool SaveContent(ContentViewModel contentViewModel, bool saveAs = false)
        {
            var HSViewModel = contentViewModel as HSViewModel;

            if (HSViewModel == null)
            {
                _loggerService.Log("ContentViewModel needs to be a HSViewModel to save details", LogCategory.Exception,
                                   LogPriority.High);
                throw new ArgumentException("ContentViewModel needs to be a HSViewModel to save details");
            }

            var mdModel = HSViewModel.Model as HSModel;

            if (mdModel == null)
            {
                _loggerService.Log("HSViewModel does not have a HSModel which should have the text",
                                   LogCategory.Exception, LogPriority.High);
                throw new ArgumentException("HSViewModel does not have a HSModel which should have the text");
            }

            var location = mdModel.Location as string;

            if (location == null)
            {
                //If there is no location, just prompt for Save As..
                saveAs = true;
            }

            if (saveAs)
            {
                if (location != null)
                    _dialog.InitialDirectory = Path.GetDirectoryName(location);

                _dialog.CheckPathExists = true;
                _dialog.DefaultExt = "has";
                _dialog.Filter = "Hassium files (*.has)|*.has";
                
                if (_dialog.ShowDialog() == true)
                {
                    location = _dialog.FileName;
                    mdModel.SetLocation(location);
                    HSViewModel.Title = Path.GetFileName(location);
                    try
                    {
                        File.WriteAllText(location, mdModel.Document.Text);
                        mdModel.SetDirty(false);
                        _loggerService.Log("Saved active document as " + mdModel.Document.Text, LogCategory.Info, LogPriority.Low);
                        return true;
                    }
                    catch (Exception exception)
                    {
                        _loggerService.Log(exception.Message, LogCategory.Exception, LogPriority.High);
                        _loggerService.Log(exception.StackTrace, LogCategory.Exception, LogPriority.High);
                        return false;
                    }
                }
            }
            else
            {
                try
                {
                    File.WriteAllText(location, mdModel.Document.Text);
                    mdModel.SetDirty(false);
                    _loggerService.Log("Saved active document as " + mdModel.Document.Text, LogCategory.Info, LogPriority.Low);
                    return true;
                }
                catch (Exception exception)
                {
                    _loggerService.Log(exception.Message, LogCategory.Exception, LogPriority.High);
                    _loggerService.Log(exception.StackTrace, LogCategory.Exception, LogPriority.High);
                    return false;
                }
            }

            return false;
        }

        /// <summary>
        /// Validates the content from an ID - the ContentID from the ContentViewModel
        /// </summary>
        /// <param name="contentId">The content ID which needs to be validated</param>
        /// <returns>True, if valid from content ID - false, otherwise</returns>
        public bool ValidateContentFromId(string contentId)
        {
            string[] split = Regex.Split(contentId, ":##:");
            if (split.Count() == 2)
            {
                string identifier = split[0];
                string path = split[1];
                if (identifier == "FILE" && ValidateContentType(path))
                {
                    return true;
                }
            }
            return false;
        }

        #endregion
    }
}