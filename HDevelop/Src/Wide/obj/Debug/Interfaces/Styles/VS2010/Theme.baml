   M S B A M L   `   `   `  ����`  \ICSharpCode.AvalonEdit, Version=4.3.2.9632, Culture=neutral, PublicKeyToken=9cc39be672370310_Dclr-namespace:ICSharpCode.AvalonEdit;assembly=ICSharpCode.AvalonEditICSharpCode.AvalonEdit  5      oLclr-namespace:ICSharpCode.AvalonEdit.Editing;assembly=ICSharpCode.AvalonEditICSharpCode.AvalonEdit.Editing  5      ? ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Wide.Interfaces.ConvertersWide.Interfaces.Converters 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source'    !ICSharpCode.AvalonEdit.TextEditor �� 
TargetType �� 	Resources;  5Wide.Interfaces.Converters.PercentToFontSizeConverter   Key �� Property �� Value �� 
TargetType"    VerticalScrollBarVisibility$    HorizontalScrollBarVisibility	 �� RelativeSource
 �� Path � ColumnDefinitions � RowDefinitions-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� CanContentScroll �� CanHorizontallyScroll �� CanVerticallyScroll �� VerticalOffset � Value �� ScrollableHeight � Maximum �� ViewportHeight �� ViewportSize* �� #ComputedVerticalScrollBarVisibility �� SelectedValuePath �� 
IsEditable �� Text �� Mode  PToFSizeConverter �� 	Converter �� Orientation �� HorizontalOffset �� ScrollableWidth  �� ViewportWidth,! �� %ComputedHorizontalScrollBarVisibility" �� Triggers# P� Property$ P� Value% �� 
TargetName-   'ICSharpCode.AvalonEdit.Editing.TextArea& �� 
StartPoint' �� EndPoint( �� Opacity) � Color* � Offset+ >� Brush, >� 	Thickness- �� Orientation. K� ZIndex  ContextMenuBackground  ContextMenuBorderBrush  MenuBackground  SeperatorBorderBrush/ m� IsSubmenuOpen0 � AllowsTransparency1 J� SnapsToDevicePixels  SubMenuBorderBrush2 K� IsItemsHost  HighlightMenuItemGradient3 P� 
SourceName  MenuItemForegroundDisabled 	 MenuItemForegroundEnabled 
 SeperatorForeground�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      S
AvalonEditDclr-namespace:ICSharpCode.AvalonEdit;assembly=ICSharpCode.AvalonEdit  5      XeditingLclr-namespace:ICSharpCode.AvalonEdit.Editing;assembly=ICSharpCode.AvalonEdit  5      7
Converters(clr-namespace:Wide.Interfaces.Converters  5        5      �� 5   
   $Q Kpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/Brushes.xaml?�6   �� 5	   
   $S Mpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/StatusBar.xaml?�6   �� 5
   
   $Q Kpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/Toolbar.xaml?�6   �� 5   
   $K Epack://application:,,,/Wide;component/Interfaces/Styles/Controls.xaml?�6   %\  '         7  '  �    '�� �
    7  7  'o� �    7  (�� �    5�      *MenuItem.SeparatorStyleKey+)7  (�� �    5�      *$"MenuItem.TopLevelHeaderTemplateKey+)7  7  7  7  7 	 '�� L    7 
 �� 5      "   6    5   
   ��  5      PToFSizeConverter  64   5      .�5   
   ��  � ��# � ��6'   �� 5   
    � ��# � ��6'   �� 5   
    �@  LineNumbersForeground �	#ff2b91af62   �� 5   
    � ��$ LeftToRight=�6*   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� $��PART_ScrollViewer��65   |�.  ��. #��z 5   #   #��z 5   #   $	��Top=�5   v   $
��Left=�5   #   #��z��6E   #��z��6o   #��z��5   #   #��z��6O   ��5   #   �� 	 �� *TemplatedParent+$
 TextArea���5      �� 5       " ��6.   .R�5!   "   �� #��z��6)   #��z��6U   #��z��5"   )   #��z��6e   ._�5#   &   � #��z��6+   #��z��5$   +   #��z��6g    5%   *   �� 5&   .   $��* �6?   �� 5'   .   $
��Auto �6?    5)   *   �� 5*   .   $��* �6<   �� 5+   .   $
��Auto �6<   .+�5/   *   �� $��0��6A   $��0��6Q   $ Local=�50   A    .  .  . 51   A   �� 54   *   $��PART_VerticalScrollBar��64   $��1��6R   # z 6b   # z 55   4   # z 6a   #y�z 56   4   � 59   *   $��0��6/   $��1��6?   #��z��6L    5:   .   �� 5;   2   $
��Auto �6C   �� 5<   2   $��* �6C   .+�5?   .   �� $��0��67   $��50��6G   $��3q�6U   $��3q�6`   $��10(�6l   $ Content��5@   7    .  5A   7   �� 	 �� *TemplatedParent+$
 FontSize�$ TwoWay=�8   .@�5C   2   �� $
��20 %��6?   �� 5D   2   $
��50 %��6?   �� 5E   2   $
��70 %��6?   �� 5F   2   $��100 %��6?   �� 5G   2   $��150 %��6?   �� 5H   2   $��200 %��6?   �� 5I   2   $��400 %��6?   5J   /   �� 5L   .   $��PART_HorizontalScrollBar��68   $ 
Horizontal=�6X   $��1��5M   8   # z 6H   # z 6s   # z  5N   8   #y�z! 6g   5O   +   5P   '   5Q   #   5R      5T      " 5U      P� 5V      # �@  WordWrap$ . . �5W      �� $% PART_ScrollViewer��6%    � ��$ Disabled=�6m   5X      5Z      5\      5]      �� 5_      "  6   .�5`   
   ��  �@�FocusVisualStyle 6-   Z� �� 5a   
    �@ SelectionBrush 5b      �� 5c      $	& 0,0&�6&   $	' 0,1&�67   $( .5Q�6F   .��5e      � $) #ffc41c��6#   $	* .05Q�63   5f      5h      �� 5i   
    �@ SelectionBorder 5j      >� 5k      + �	#A0ffc41c$, 1Q�6(   5m      �� 5n   
    �@ SelectionForeground �	#FF00000060   �� 5o   
    � �� 5p      �� 5q      "  6"   .R�5r      ]� |�.  .+�5s      �� $
��Left=�6'   |�.  ��5t   '   �� 	 �� *TemplatedParent+$
 LeftMargins���5u      �� 5v   "   .R�5w   &   �� $- 
Horizontal=�61   5x   #   5z      �� 5{      $. -1��6+   |�.  ��5|   +   �� 	 �� *TemplatedParent+$
 TextView�5}      5~      5�      5�      �� 5�      " ��6   .�5�   
   ��  � ��8   6'   �� 5�   
    � ��8  6(   �� 5�   
    � ��$ 1q�6,   5�      �� 5�      " o�6   .�5�   
   ��  � ��8   6'   5�      �� 5�      " ��6:   .�5�   
   ��  � ��$ 1��6#   �� 5�   
    � ��$ 0,4,0,4q�6#   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� 8��  $��1q�6Q   5�      5�      5�      �� 5�      " m�6L   .R�5�   
   �� $��Border��6   ._�5�      � .+�5�      �� $��6,3,6,3q�6#   $��Header��64   ��. 6K   � 5�      $��Popup��6   $��Bottom=�6%   #��z/ 68   0 . |�.  $
��Fade=�5�   *   .��5�      �� $��SubmenuBorder��6   1 . 8��  8�� $��1q�5�   O   ._�5�      �� 2 . $ Cycle=�68   5�      5�      5�      5�      " 5�   
   P� 5�      "# �@m�IsSuspendingPopupAnimation$ . . �5�      �� $% Popup��6    � ��$
 None=�6F   5�      P� 5�      # �@m�IsHighlighted$ . . �5�      �� $% Border��6   8   � ��6C   �� 5�      $% Border��6    � ��
 ���� 6D   5�      P� 5�      $3 Popup��6   # �@�AllowsTransparency$ . . �5�      �� $% SubmenuBorder��6    �@��CornerRadius$ 0,0,4,4��6L   �� 5�      $% SubmenuBorder��6    �@��Padding$ 0,0,0,3q�6G   5�      P� 5�      # � {�$ .  . �5�      �� 8   � ��6/   5�      P� 5�      # � {�$ . . �5�      �� 8   � ��6/   5�      P� 5�      $3 Popup��6   # � ��$ . . �5�      �� $% Border��6    � �� �#d0d7e26C   5�      5�      �� 5�      " ��6   .�5�   
   ��  � ��8   6'   5�      5�      