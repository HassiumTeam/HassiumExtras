   M S B A M L   `   `   `  ���� `  \ICSharpCode.AvalonEdit, Version=4.3.2.9632, Culture=neutral, PublicKeyToken=9cc39be672370310_Dclr-namespace:ICSharpCode.AvalonEdit;assembly=ICSharpCode.AvalonEditICSharpCode.AvalonEdit  oLclr-namespace:ICSharpCode.AvalonEdit.Editing;assembly=ICSharpCode.AvalonEditICSharpCode.AvalonEdit.Editing  ? ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Wide.Interfaces.ConvertersWide.Interfaces.Converters R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source'    !ICSharpCode.AvalonEdit.TextEditor �� 
TargetType �� 	Resources;  5Wide.Interfaces.Converters.PercentToFontSizeConverter   Key �� Property �� Value �� 
TargetType"    VerticalScrollBarVisibility$    HorizontalScrollBarVisibility	 �� RelativeSource
 �� Path � ColumnDefinitions � RowDefinitions-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� CanContentScroll �� CanHorizontallyScroll �� CanVerticallyScroll �� VerticalOffset � Value �� ScrollableHeight � Maximum �� ViewportHeight �� ViewportSize* �� #ComputedVerticalScrollBarVisibility �� SelectedValuePath �� 
IsEditable �� Text �� Mode  PToFSizeConverter �� 	Converter �� Orientation �� HorizontalOffset �� ScrollableWidth  �� ViewportWidth,! �� %ComputedHorizontalScrollBarVisibility" �� Triggers# P� Property$ P� Value% �� 
TargetName-   'ICSharpCode.AvalonEdit.Editing.TextArea& �� 
StartPoint' �� EndPoint( �� Opacity) � Color* � Offset+ >� Brush, >� 	Thickness- �� Orientation. K� ZIndex  ContextMenuBackground  ContextMenuBorderBrush  MenuBackground  SeperatorBorderBrush/ m� IsSubmenuOpen0 � AllowsTransparency1 J� SnapsToDevicePixels  SubMenuBorderBrush2 K� IsItemsHost  HighlightMenuItemGradient3 P� 
SourceName  MenuItemForegroundDisabled 	 MenuItemForegroundEnabled 
 SeperatorForeground�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     S
AvalonEditDclr-namespace:ICSharpCode.AvalonEdit;assembly=ICSharpCode.AvalonEdit  XeditingLclr-namespace:ICSharpCode.AvalonEdit.Editing;assembly=ICSharpCode.AvalonEdit  7
Converters(clr-namespace:Wide.Interfaces.Converters    �� $Q Kpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/Brushes.xaml?��� $S Mpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/StatusBar.xaml?��� $Q Kpack://application:,,,/Wide;component/Interfaces/Styles/VS2010/Toolbar.xaml?��� $K Epack://application:,,,/Wide;component/Interfaces/Styles/Controls.xaml?�%�
  '         7  '  l    '�� [    7  7  'o� �    7  (�� �    *MenuItem.SeparatorStyleKey+)7  (�� -    *$"MenuItem.TopLevelHeaderTemplateKey+)7  7  7  7  7 	 '�� 
    7 
 �� "    ��  PToFSizeConverter  .���  � ��# � ����  � ��# � ����  �@  LineNumbersForeground �	#ff2b91af��  � ��$ LeftToRight=���  � �� �� "   .R��� $��PART_ScrollViewer��|�.  ��. #��z #��z $	��Top=�$
��Left=�#��z��#��z��#��z��#��z������ 	 �� *TemplatedParent+$
 TextArea����� " ��.R��� #��z��#��z��#��z��#��z��._�� #��z��#��z��#��z�� �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $��0��$��0��$ Local=� .  .  . �� $��PART_VerticalScrollBar��$��1��# z # z # z #y�z � $��0��$��1��#��z�� �� $
��Auto ��� $��* �.+��� $��0��$��50��$��3q�$��3q�$��10(�$ Content�� .  �� 	 �� *TemplatedParent+$
 FontSize�$ TwoWay=�8   .@��� $
��20 %���� $
��50 %���� $
��70 %���� $��100 %���� $��150 %���� $��200 %���� $��400 %���� $��PART_HorizontalScrollBar��$ 
Horizontal=�$��1��# z # z # z  #y�z! " P� # �@  WordWrap$ . . ��� $% PART_ScrollViewer�� � ��$ Disabled=��� "  .���  �@�FocusVisualStyle Z� ��  �@ SelectionBrush �� $	& 0,0&�$	' 0,1&�$( .5Q�.��� $) #ffc41c��$	* .05Q���  �@ SelectionBorder >� + �	#A0ffc41c$, 1Q���  �@ SelectionForeground �	#FF000000��  � �� �� "  .R�]� |�.  .+��� $
��Left=�|�.  ���� 	 �� *TemplatedParent+$
 LeftMargins����� .R��� $- 
Horizontal=��� $. -1��|�.  ���� 	 �� *TemplatedParent+$
 TextView��� " ��.���  � ��8   ��  � ��8  ��  � ��$ 1q��� " o�.���  � ��8   �� " ��.���  � ��$ 1����  � ��$ 0,4,0,4q���  � �� �� " ��.R��� 8��  $��1q��� " m�.R��� $��Border��._�� .+��� $��6,3,6,3q�$��Header����. � $��Popup��$��Bottom=�#��z/ 0 . |�.  $
��Fade=�.���� $��SubmenuBorder��1 . 8��  8�� $��1q�._��� 2 . $ Cycle=�" P� "# �@m�IsSuspendingPopupAnimation$ . . ��� $% Popup�� � ��$
 None=�P� # �@m�IsHighlighted$ . . ��� $% Border��8   � ���� $% Border�� � ��
 ���� P� $3 Popup��# �@�AllowsTransparency$ . . ��� $% SubmenuBorder�� �@��CornerRadius$ 0,0,4,4���� $% SubmenuBorder�� �@��Padding$ 0,0,0,3q�P� # � {�$ .  . ��� 8   � ��P� # � {�$ . . ��� 8   � ��P� $3 Popup��# � ��$ . . ��� $% Border�� � �� �#d0d7e2�� " ��.���  � ��8   