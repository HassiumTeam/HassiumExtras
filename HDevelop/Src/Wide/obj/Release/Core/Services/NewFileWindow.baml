   M S B A M L   `   `   `  ���� ?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Wide.Interfaces.ConvertersWide.Interfaces.Converters  I EMahApps.Metro, Version=0.12.1.0, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls &    Wide.Core.Services.NewFileWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ?
Converters(clr-namespace:Wide.Interfaces.Converters     PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro       � Title$  
New Object��$	��400��$	��700�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   � WindowStyle$ 
ToolWindow=� � 	Resources 7   1Wide.Interfaces.Converters.NullToBooleanConverter   nullToBooleanConverter?   9Wide.Interfaces.Converters.NullObjectToVisibiltyConverter  nullToVisibilityConverter��%   &	        &	          .���    ControlHighlightedColorBrush#���   � RowDefinitions �� $��* ��� $��55 �.+�� $��0��.+��  � ColumnDefinitions �� $	��55* ��� $	��45* �.+��� $��0��
�������._��� -    ��Name$ listView������ ���� .R�]� .+��� $
��Left=�$��64��$��64��$��Center=����� *ImageSource+�� $��16(�$��Center=����� *	Display+���� 	 �� 
TargetType"	 ��.�-   �� $��1��$��10q�.+��� 
 �� Orientation$
 
Horizontal=�.+���   
BlackBrush#���  $��Type: ��$
��Bold"�$��16(� �� Padding$ 5q�y���  �� ElementName$ listView�� �� Path$ SelectedItem� �� 	Converter# [ �� #���  $��16(�$ 0,5,0,0q����� $ listView��$ SelectedItem.Display��� #���  $��14(�$ 5q����� $ listView��$ SelectedItem.Description�� $��1��.+��� $
 
Horizontal=�$��RightToLeft=�.+��� $��_Cancel�� �� IsCancel . $��85��$��25��$��12q��� -   $
��_New�� �� 	IsDefault . $��85��$��25��{��� $ listView��$ SelectedItem�# [  