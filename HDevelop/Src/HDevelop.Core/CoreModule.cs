﻿#region License

// Copyright (c) 2013 Chandramouleswaran Ravichandran
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#endregion

using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using Microsoft.Practices.Prism.Commands;
using Microsoft.Practices.Prism.Events;
using Microsoft.Practices.Prism.Modularity;
using Microsoft.Practices.Unity;
using Wide.Interfaces;
using Wide.Interfaces.Controls;
using Wide.Interfaces.Events;
using Wide.Interfaces.Services;
using Wide.Interfaces.Settings;
using Wide.Interfaces.Themes;
using System.Windows;
using HDevelop.Core.Settings;

namespace HDevelop.Core
{
    [Module(ModuleName = "HDevelop.Core")]
    [ModuleDependency("Wide.Tools.Logger")]
    public class CoreModule : IModule
    {
        private IUnityContainer _container;
        private IEventAggregator _eventAggregator;

        public CoreModule(IUnityContainer container, IEventAggregator eventAggregator)
        {
            _container = container;
            _eventAggregator = eventAggregator;
        }

        public void Initialize()
        {
            _eventAggregator.GetEvent<SplashMessageUpdateEvent>().Publish(new SplashMessageUpdateEvent
            { Message = "Loading Core Module" });
            LoadTheme();
            LoadCommands();
            LoadMenus();
            LoadToolbar();
            RegisterParts();
            LoadSettings();
        }

        private void LoadToolbar()
        {
            _eventAggregator.GetEvent<SplashMessageUpdateEvent>().Publish(new SplashMessageUpdateEvent
            { Message = "Toolbar.." });
            var toolbarService = _container.Resolve<IToolbarService>();
            var menuService = _container.Resolve<IMenuService>();
            var manager = _container.Resolve<ICommandManager>();

            toolbarService.Add(new ToolbarViewModel("Standard", 1) { Band = 1, BandIndex = 1 });
            toolbarService.Get("Standard").Add(menuService.Get("_File").Get("_New"));
            toolbarService.Get("Standard").Add(menuService.Get("_File").Get("_Open"));
            toolbarService.Get("Standard").Add(menuService.Get("_File").Get("_Save"));
            toolbarService.Get("Standard").Add(menuService.Get("_File").Get("Save All"));

            toolbarService.Add(new ToolbarViewModel("Edit", 1) { Band = 1, BandIndex = 2 });
            toolbarService.Get("Edit").Add(menuService.Get("_Edit").Get("_Undo"));
            toolbarService.Get("Edit").Add(menuService.Get("_Edit").Get("_Redo"));
            toolbarService.Get("Edit").Add(menuService.Get("_Edit").Get("Cut"));
            toolbarService.Get("Edit").Add(menuService.Get("_Edit").Get("Copy"));
            toolbarService.Get("Edit").Add(menuService.Get("_Edit").Get("_Paste"));

            toolbarService.Add(new ToolbarViewModel("Debug", 1) { Band = 1, BandIndex = 3 });
            toolbarService.Get("Debug").Add(new MenuItemViewModel("Debug", 1, new BitmapImage(new Uri(@"pack://application:,,,/HDevelop.Core;component/Icons/Start_16.png")), manager.GetCommand("DEBUG")));
            toolbarService.Get("Debug").Get("Debug").Add(new MenuItemViewModel("Debug and measure time", 1, new BitmapImage(new Uri(@"pack://application:,,,/HDevelop.Core;component/Icons/Start_16.png")), manager.GetCommand("DEBUG")) { CommandParameter = "time" });
            toolbarService.Get("Debug").Get("Debug").Add(new MenuItemViewModel("Debug and show tokens", 2, new BitmapImage(new Uri(@"pack://application:,,,/HDevelop.Core;component/Icons/Start_16.png")), manager.GetCommand("DEBUG")) { CommandParameter = "tokens" });

            menuService.Get("_Tools").Add(toolbarService.RightClickMenu);

            //Initiate the position settings changes for toolbar
            _container.Resolve<IToolbarPositionSettings>();
        }

        private void LoadSettings()
        {
            ISettingsManager manager = _container.Resolve<ISettingsManager>();
            manager.Add(new HSSettingsItem("Text Editor", 1, null));
            manager.Get("Text Editor").Add(new HSSettingsItem("General", 1, EditorOptions.Default));
        }

        private void RegisterParts()
        {
            _container.RegisterType<HSHandler>();
            _container.RegisterType<HSViewModel>();
            _container.RegisterType<HSView>();

            IContentHandler handler = _container.Resolve<HSHandler>();
            _container.Resolve<IContentHandlerRegistry>().Register(handler);
        }

        private void LoadTheme()
        {
            _eventAggregator.GetEvent<SplashMessageUpdateEvent>().Publish(new SplashMessageUpdateEvent
            { Message = "Themes.." });
            var manager = _container.Resolve<IThemeManager>();
            var themeSettings = _container.Resolve<IThemeSettings>();
            var win = _container.Resolve<IShell>() as Window;
            manager.AddTheme(new LightTheme());
            manager.AddTheme(new DarkTheme());
            win.Dispatcher.InvokeAsync(() => manager.SetCurrent(themeSettings.SelectedTheme));
        }

        private void LoadCommands()
        {
            _eventAggregator.GetEvent<SplashMessageUpdateEvent>().Publish(new SplashMessageUpdateEvent
            { Message = "Commands.." });
            var manager = _container.Resolve<ICommandManager>();


            manager.RegisterCommand("OPEN", new DelegateCommand(OpenModule));
            manager.RegisterCommand("SAVE", new DelegateCommand(SaveDocument, CanExecuteSaveDocument));
            manager.RegisterCommand("SAVEAS", new DelegateCommand(SaveAsDocument, CanExecuteSaveAsDocument));
            manager.RegisterCommand("SAVEALL", new DelegateCommand(SaveAllDocument));
            manager.RegisterCommand("EXIT", new DelegateCommand(CloseCommandExecute));
            manager.RegisterCommand("LOGSHOW", new DelegateCommand(ToggleLogger));
            manager.RegisterCommand("THEMECHANGE", new DelegateCommand<string>(ThemeChangeCommand));

            manager.RegisterCommand("DEBUG", new DelegateCommand<string>(DebugCmd));
        }

        private void CloseCommandExecute()
        {
            IShell shell = _container.Resolve<IShell>();
            shell.Close();
        }

        private void LoadMenus()
        {
            _eventAggregator.GetEvent<SplashMessageUpdateEvent>().Publish(new SplashMessageUpdateEvent
            { Message = "Menus.." });
            var manager = _container.Resolve<ICommandManager>();
            var menuService = _container.Resolve<IMenuService>();
            var settingsManager = _container.Resolve<ISettingsManager>();
            var themeSettings = _container.Resolve<IThemeSettings>();
            var recentFiles = _container.Resolve<IRecentViewSettings>();
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            ToolViewModel logger = workspace.Tools.First(f => f.ContentId == "Logger");

            menuService.Add(new MenuItemViewModel("_File", 1));

            menuService.Get("_File").Add(
                (new MenuItemViewModel("_New", 3,
                                       new BitmapImage(
                                           new Uri(
                                               @"pack://application:,,,/HDevelop.Core;component/Icons/NewRequest_16.png")),
                                       manager.GetCommand("NEW"),
                                       new KeyGesture(Key.N, ModifierKeys.Control, "Ctrl + N"))));

            menuService.Get("_File").Add(
                (new MenuItemViewModel("_Open", 4,
                                       new BitmapImage(
                                           new Uri(
                                               @"pack://application:,,,/HDevelop.Core;component/Icons/Open_16.png")),
                                       manager.GetCommand("OPEN"),
                                       new KeyGesture(Key.O, ModifierKeys.Control, "Ctrl + O"))));
            menuService.Get("_File").Add(new MenuItemViewModel("_Save", 5,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Save_16.png")),
                                                               manager.GetCommand("SAVE"),
                                                               new KeyGesture(Key.S, ModifierKeys.Control, "Ctrl + S")));
            menuService.Get("_File").Add(new SaveAsMenuItemViewModel("Save As..", 6,
                                                   new BitmapImage(
                                                       new Uri(
                                                           @"pack://application:,,,/HDevelop.Core;component/Icons/Save_16.png")),
                                                   manager.GetCommand("SAVEAS"), null, false, false, _container));
            menuService.Get("_File").Add(new MenuItemViewModel("Save All", 7,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/SaveAll_16.png")),
                                                               manager.GetCommand("SAVEALL"),
                                                               new KeyGesture(Key.S, ModifierKeys.Control | ModifierKeys.Shift, "Ctrl + Shift + S")));


            menuService.Get("_File").Add(new MenuItemViewModel("Close", 8, new BitmapImage(
                                                       new Uri(
                                                           @"pack://application:,,,/HDevelop.Core;component/Icons/Close_16.png")), manager.GetCommand("CLOSE"),
                                                               new KeyGesture(Key.F4, ModifierKeys.Control, "Ctrl + F4")));

            menuService.Get("_File").Add(recentFiles.RecentMenu);

            menuService.Get("_File").Add(new MenuItemViewModel("E_xit", 101, new BitmapImage(
                                                       new Uri(
                                                           @"pack://application:,,,/HDevelop.Core;component/Icons/Quit_16.png")), manager.GetCommand("EXIT"),
                                                               new KeyGesture(Key.F4, ModifierKeys.Alt, "Alt + F4")));


            menuService.Add(new MenuItemViewModel("_Edit", 2));
            menuService.Get("_Edit").Add(new MenuItemViewModel("_Undo", 1,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Undo_16.png")),
                                                               ApplicationCommands.Undo));
            menuService.Get("_Edit").Add(new MenuItemViewModel("_Redo", 2,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Redo_16.png")),
                                                               ApplicationCommands.Redo));
            menuService.Get("_Edit").Add(MenuItemViewModel.Separator(15));
            menuService.Get("_Edit").Add(new MenuItemViewModel("Cut", 20,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Cut_16.png")),
                                                               ApplicationCommands.Cut));
            menuService.Get("_Edit").Add(new MenuItemViewModel("Copy", 21,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Copy_16.png")),
                                                               ApplicationCommands.Copy));
            menuService.Get("_Edit").Add(new MenuItemViewModel("_Paste", 22,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Paste_16.png")),
                                                               ApplicationCommands.Paste));
            menuService.Get("_Edit").Add(MenuItemViewModel.Separator(23));
            menuService.Get("_Edit").Add(new MenuItemViewModel("_Find", 22,
                                                               new BitmapImage(
                                                                   new Uri(
                                                                       @"pack://application:,,,/HDevelop.Core;component/Icons/Find_16.png")),
                                                               ApplicationCommands.Find));

            menuService.Add(new MenuItemViewModel("_View", 3));

            if (logger != null)
                menuService.Get("_View").Add(new MenuItemViewModel("_Logger", 1,
                                                                   new BitmapImage(
                                                                       new Uri(
                                                                           @"pack://application:,,,/HDevelop.Core;component/Icons/Logger_16.png")),
                                                                   manager.GetCommand("LOGSHOW"))
                { IsCheckable = true, IsChecked = logger.IsVisible });

            menuService.Get("_View").Add(new MenuItemViewModel("Themes", 1));

            //Set the checkmark of the theme menu's based on which is currently selected
            menuService.Get("_View").Get("Themes").Add(new MenuItemViewModel("Dark", 1, null,
                                                                             manager.GetCommand("THEMECHANGE"))
            {
                IsCheckable = true,
                IsChecked = (themeSettings.SelectedTheme == "Dark"),
                CommandParameter = "Dark"
            });
            menuService.Get("_View").Get("Themes").Add(new MenuItemViewModel("Light", 2, null,
                                                                             manager.GetCommand("THEMECHANGE"))
            {
                IsCheckable = true,
                IsChecked = (themeSettings.SelectedTheme == "Light"),
                CommandParameter = "Light"
            });

            menuService.Add(new MenuItemViewModel("_Tools", 4));
            menuService.Get("_Tools").Add(new MenuItemViewModel("Settings", 1, null, settingsManager.SettingsCommand));

            menuService.Add(new MenuItemViewModel("_Help", 4));
        }

        #region Commands

        #region Open

        private void OpenModule()
        {
            var service = _container.Resolve<IOpenDocumentService>();
            service.Open();
        }

        #endregion

        #region Save

        private bool CanExecuteSaveDocument()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            if (workspace.ActiveDocument != null)
            {
                return workspace.ActiveDocument.Model.IsDirty;
            }
            return false;
        }

        private bool CanExecuteSaveAsDocument()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            return (workspace.ActiveDocument != null);
        }

        private void SaveDocument()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            ICommandManager manager = _container.Resolve<ICommandManager>();
            workspace.ActiveDocument.Handler.SaveContent(workspace.ActiveDocument);
            manager.Refresh();
        }

        private void SaveAsDocument()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            ICommandManager manager = _container.Resolve<ICommandManager>();
            if (workspace.ActiveDocument != null)
            {
                workspace.ActiveDocument.Handler.SaveContent(workspace.ActiveDocument, true);
                manager.Refresh();
            }
        }
        private void SaveAllDocument()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            ICommandManager manager = _container.Resolve<ICommandManager>();
            workspace.Documents.All(x => x.Handler.SaveContent(x));
            //workspace.ActiveDocument.Handler.SaveContent(workspace.ActiveDocument);
            manager.Refresh();
        }
        #endregion

        #region Theme

        private void ThemeChangeCommand(string s)
        {
            var manager = _container.Resolve<IThemeManager>();
            var menuService = _container.Resolve<IMenuService>();
            var win = _container.Resolve<IShell>() as Window;
            MenuItemViewModel mvm =
                menuService.Get("_View").Get("Themes").Get(manager.CurrentTheme.Name) as MenuItemViewModel;

            if (manager.CurrentTheme.Name != s)
            {
                if (mvm != null)
                    mvm.IsChecked = false;
                win.Dispatcher.InvokeAsync(() => manager.SetCurrent(s));
            }
            else
            {
                if (mvm != null)
                    mvm.IsChecked = true;
            }
        }

        #endregion

        #region Logger click

        private void ToggleLogger()
        {
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            var menuService = _container.Resolve<IMenuService>();
            ToolViewModel logger = workspace.Tools.First(f => f.ContentId == "Logger");
            if (logger != null)
            {
                logger.IsVisible = !logger.IsVisible;
                var mi = menuService.Get("_View").Get("_Logger") as MenuItemViewModel;
                mi.IsChecked = logger.IsVisible;
            }
        }

        #endregion

        #region Debug
        private void DebugCmd(string opt)
        {
            bool time = opt == "time";
            bool tok = opt == "tokens";
            IWorkspace workspace = _container.Resolve<AbstractWorkspace>();
            ICommandManager manager = _container.Resolve<ICommandManager>();
            if (workspace.ActiveDocument != null)
            {
                string fname = workspace.ActiveDocument.Model.Location.ToString();
                ProcessStartInfo sinfo = new ProcessStartInfo("cmd.exe", "/c " + Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Hassium.exe") + " ");
                if (opt == "time") sinfo.Arguments += "-t ";
                if (opt == "tokens") sinfo.Arguments += "-d ";
                sinfo.Arguments += fname;
                sinfo.Arguments += " & pause";
                sinfo.WorkingDirectory = Path.GetDirectoryName(fname);
                Process.Start(sinfo);
            }
        }
        #endregion

        #endregion
    }
}