   M S B A M L   `   `   `  ����   Wide'   !Wide.Core.Settings.SettingsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Settings��$	��500��$	��700�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanResizeWithGrip=� � ShowInTaskbar .   � WindowStyle$ 
ToolWindow=� � Topmost . .���  � RowDefinitions �� $��* ��� $��55 �.+�� $��0��.+��  � ColumnDefinitions �� $��3* ��� $��7* �.+�R� -   $��settingsTreeView��$��0����. ����  �� Path$ Children����� 	 �� ItemsSource	 �� *
Children+.R��� 
 �� Orientation$
 
Horizontal=�.+��� $��4,0,4,0q����� *Title+�� $��1����.  � DataContext ��  �� ElementName$ settingsTreeView��$ SelectedItem����� $
 View�� $��1��.+��� $
 
Horizontal=�$��RightToLeft=�.+��� $��_Cancel�� �� IsCancel . $��85��$��25��$��12q��� -   $	��_OK�� �� 	IsDefault . $��85��$��25��