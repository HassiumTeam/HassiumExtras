﻿#region License

// Copyright (c) 2013 Chandramouleswaran Ravichandran
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#endregion

using System.Windows;
using Microsoft.Practices.Unity;
using Wide.Interfaces;

namespace HDevelop
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private HDevelopBootstrapper b;

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            b = new HDevelopBootstrapper();
            b.Run();
            var shell = b.Container.Resolve<IShell>();
            (shell as Window).Loaded += App_Loaded;
            (shell as Window).Unloaded += App_Unloaded;
        }

        void App_Unloaded(object sender, System.EventArgs e)
        {
            var shell = b.Container.Resolve<IShell>();
            shell.SaveLayout();
        }

        void App_Loaded(object sender, RoutedEventArgs e)
        {
            var shell = b.Container.Resolve<IShell>();
            shell.LoadLayout();
        }
    }
}