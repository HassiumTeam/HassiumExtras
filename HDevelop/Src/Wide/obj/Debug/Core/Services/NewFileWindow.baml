   M S B A M L   `   `   `  ����?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Wide.Interfaces.ConvertersWide.Interfaces.Converters  5   	   I EMahApps.Metro, Version=0.12.1.0, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   &    Wide.Core.Services.NewFileWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ?
Converters(clr-namespace:Wide.Interfaces.Converters     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � Title$  
New Object��5   	   $	��400��6   $	��700��6)    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � ShowInTaskbar .   � WindowStyle$ 
ToolWindow=�65    � 	Resources 5	      7   1Wide.Interfaces.Converters.NullToBooleanConverter   nullToBooleanConverter?   9Wide.Interfaces.Converters.NullObjectToVisibiltyConverter  nullToVisibilityConverter��%:   &	        &	        5
   
   6,     5   
   64   5      .��5      �    ControlHighlightedColorBrush#���  6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��55 �6   .+�5   
   � $��0��6   .+�5      �  � ColumnDefinitions 5      �� 5      $	��55* �6'   �� 5      $	��45* �6'   .+�5      �� $��0��6   
�������._�5      �� -   5         ��Name$ listView��5      ��60   �� ��5      �� 5      .R�5   "   ]� .+�5   &   �� $
��Left=�6K   $��64��6a   $��64��6m   $��Center=�6x   ��6,   �� *ImageSource+6x   �� 5   &   $��16(�6I   $��Center=�6W   ��60   �� *	Display+6W   5   #   5       ��5"      �� 5#      	 �� 
TargetType"	 ��6$   .�5$   "   -   5        5%      5'      5(      �� 5)      $��1��6   $��10q�6-   .+�5*      �� 
 �� Orientation$
 
Horizontal=�6!   .+�5+      ��   
BlackBrush#���  6$   $��Type: ��6N   $
��Bold"�6\   $��16(�6n    �� Padding$ 5q�6|   y�6�   ��  �� ElementName$ listView�� �� Path$ SelectedItem� �� 	Converter# [ �� 5,      #���  6$   $��16(�6�   $ 0,5,0,0q�6�   ��6N   �� $ listView��$ SelectedItem.Display�6�   5-      �� 5.      #���  6    $��14(�6�   $ 5q�6�   ��6J   �� $ listView��$ SelectedItem.Description�6�   5/      50      51      � 52   
   $��1��6   .+�53      �� $
 
Horizontal=�6   $��RightToLeft=�62   .+�54      �� $��_Cancel��6    �� IsCancel . $��85��6;   $��25��6F   $��12q�6R   �� 55      -   5        $
��_New��55       �� 	IsDefault . $��85��69   $��25��6D   {�6P   �� $ listView��$ SelectedItem�# [  6�   56      57      58      59      