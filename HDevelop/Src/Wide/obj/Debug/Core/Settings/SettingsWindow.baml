   M S B A M L   `   `   `  ����  Wide'   !Wide.Core.Settings.SettingsWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Settings��5   	   $	��500��6   $	��700��6'    � WindowStartupLocation$ CenterScreen=�63    � 
ResizeMode$ CanResizeWithGrip=�6X    � ShowInTaskbar .   � WindowStyle$ 
ToolWindow=�6�    � Topmost . .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��55 �6   .+�5
   
   � $��0��6   .+�5      �  � ColumnDefinitions 5      �� 5      $��3* �6'   �� 5      $��7* �6'   .+�5      R� -   5        $��settingsTreeView��5      $��0��63   ��. ��6C   ��  �� Path$ Children���5      �� 5      	 �� ItemsSource	 63   �� *
Children+.R�5      �� 
 �� Orientation$
 
Horizontal=�6)   .+�5   "   �� $��4,0,4,0q�6C   ��6,   �� *Title+6C   5      5      5      �� 5      $��1��6!   ��.  � DataContext 61   ��  �� ElementName$ settingsTreeView��$ SelectedItem���6y   �� $
 View�6�   5      5      � 5   
   $��1��6   .+�5      �� $
 
Horizontal=�6   $��RightToLeft=�62   .+�5      �� $��_Cancel��6    �� IsCancel . $��85��6;   $��25��6F   $��12q�6R   �� 5      -   5        $	��_OK��5       �� 	IsDefault . $��85��68   $��25��6C   6O   5       5!      5"      5#      