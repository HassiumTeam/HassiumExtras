   M S B A M L   `   `   `  ���� R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089[ WXceed.Wpf.AvalonDock, Version=2.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4   	Checkmark  
RightArrow  DisabledMenuItemBrush  �� Color �� 
TargetType  MetroSeparator �� Property  SeparatorColorBrush �� Value �� 
TargetType �� 
ResourceId � HorizontalOffset m� IsSubmenuOpen � AllowsTransparency	 J� SnapsToDevicePixels  ControlOpenColorBrush  StandardDropShadow
 J� Effect  
WhiteBrush	 �� Y1	 �� Y2	 �� X2 �� ElementName K� IsItemsHost-   'System.Windows.Input.KeyboardNavigation    DirectionalNavigation �� Triggers P� Property P� Value �� 
TargetName   ControlHighlightedColorBrush � ColumnDefinitions z� SharedSizeGroup � RowDefinitions ��Name m� InputGestureText ]� 
Conditions �� Property �� Value F�Name J� Opacity 	 AccentColorBrush 
 MetroMenuItem  
BlackBrush �� 	Resources  �� Triggers  MetroContextMenu! ��Name" �� CornerRadius# � Triggers$ :� RoutedEvent% g� Duration	& W� To' �� TargetProperty( �� 
TargetName  StandardMenu  WindowTitleColorBrush) �� Orientation* �� BasedOn�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      =
avalonDock,http://schemas.xceed.com/wpf/xaml/avalondock  %�  &	        &	 B     &	 a     &	 v     (��     $ TopLevelHeaderTemplateKey��)(�� *    $ TopLevelItemTemplateKey��)(��     $ SubmenuItemTemplateKey��)(�� �
    $ SubmenuHeaderTemplateKey��)7  &	
 (    0�� *�� $ SubmenuItemTemplateKey��+10�� *�� $ TopLevelHeaderTemplateKey��+10�� *�� $ TopLevelItemTemplateKey��+10�� *�� $ SubmenuHeaderTemplateKey��+1&	 �    &	 �    '�� �    7  'm� �    7 
 'o� �    7  '�� �    7  �<8M 0,5.1 L 1.7,5.2 L 3.4,7.1 L 8,0.4 L 9.2,0 L 3.3,10.8 Z��M 0,0 L 4,3.5 L 0,7 Z��� $  	#FF9A9A9A���� " ��.���  � ��# �  ��  � �� .  ��  � ��$ 6,2,6,2q���  � �� �� " ��.R��� #��z��#��z��#��z��$��1���� " m�.R��� $��OuterBorder��$��1,1,1,0q�
������ ._��� $��InnerBorder��$��0,0,0,1q�
������ ._�� .+��� $��6,3,6,3q�$��Header����. � $��Popup��$��Bottom=�$ -1��#��z  . |�.  $
��Fade=�$��-10,-10,-10,-10q�.���� $��SubmenuBorder��	 . #���  #���  $��1q�$��0 0 8 8q�#
 �  ._��� .+��� #���  $ -1��$ -1�� �� *ActualWidth+$ InnerBorder����  . $ Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ Popup�� � ��$
 None=�P�  �@m�IsHighlighted . . ��� $ OuterBorder��# �   � ���� $ OuterBorder�� � ��
 ���� P�  �@m�IsSubmenuOpen . . ��� $ OuterBorder��# �   � ���� $ OuterBorder��# �   � ��P�  � {� .  . ��� # �   � ���� " m�.R��� $��Border��._�� .+��� $��6,3,6,3q�$��Header����.  P�  �@m�IsHighlighted . . ��� $ Border��# �   � ���� $ Border�� � ��
 ���� P�  � {� .  . ��� # �   � ���� " m�.R��� $��Border��$��2q�._��  �� $��35��$
��Auto �$
 Icon���� $��90��$��* ��� $��50��$
��Auto �$ Shortcut���� $��13��$
��Auto � �� $��20��$��Auto  �.+��� $��	CheckIcon��$��0��$��Center=�$��Center=�$��20��$��20��$y�Visible=�$��4,0,4,0q�
������ $��1q�
������ ._��� $
��Icon��$��Center=�$��20��$��20��$��0,0,0,0q�$��Center=�$
��Icon���� $��Check��$��0��$��Center=�$��Center=�$��16��$��16��$��6,0,6,0q�
������ ._��� $��CheckP��$-��'../../../Core/Icons/Radio_Unchecked.png��$��0,0,0,0q�$��16��$��16��$y�Hidden=�$��Center=�$��Center=��� $��
HeaderHost��$��1��$��Center=�$��Header����. �� $ InputGestureText��$��2��$��Center=�#��z $��Right=� P�  Z�  �@m�Icon. ��� $ 	CheckIcon�� � y�$ Hidden=�P�  �@m�	IsChecked . . ��� $ CheckP�� � ��$- '../../../Core/Icons/Radio_Unchecked.png���� $ 	CheckIcon�� � y�$ Visible=�]�  ��  �@m�IsCheckable . ��  �@m�	IsChecked . ��  Z�  �@m�Icon/��� $ CheckP�� � ��$+ %../../../Core/Icons/Radio_Checked.png��]�  ��  �@m�IsCheckable . ��  Z�  �@m�Icon/��� $ CheckP�� � y�$ Visible=��� $
 Icon�� � y�$ Hidden=�P�  �@m�IsHighlighted . . ��� $ Border��# �   � ��P�  � {� .  . ��� # �   � ���� " m�.R��� $��Border��$��2q�._��  �� $��35��$
��Auto �$
 Icon���� $��90��$��* ��� $��50��$
��Auto �$ Shortcut���� $��13��$
��Auto � �� $��20��$��Auto  �.+��� $
��Icon��$��0��$��20��$��20��$��0,0,0,0q�$��Center=�$
��Icon���� $��
HeaderHost��$��1��$��Center=�$��Header����. �� $ InputGestureText��$��2��#��z $��Right=�F� $ 	ArrowPath��$��3��$
��Left=�$��Center=�8��  #��z��� $��Popup��$��Right=�$ -4��#��z  . |�.  $
��Fade=�$ 0Q�.���� $��SubmenuBorder��	 . #���  #���  $��1q�$��0 0 8 8q�#
 �  ._���  . $ Cycle=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ Border��# �   � ���� $ 	ArrowPath��# � 	  � ��P�  � {� .  . ��� # �   � ���� " m�.���  � ��# �  ��  � ��# �  ��  � ��# �  ��  � ��$ 0q���  � ��$ 8,2,10,2q���  � �� 2   ���� '��       " ��  P�  � {� .  . ���  �@J�Opacity$	 0.5Q��� 'F�       " F�  P�  � {� .  . ���  �@J�Opacity$	 0.5Q�  P�  �@m�Role$ TopLevelHeader=�. ���  � ��$ 7,2,8,3q���  � �� 2 P�  �@m�Role$ TopLevelItem=�. ���  � ��$ 7,2,8,3q���  � �� 2 P�  �@m�Role$ SubmenuHeader=�. ���  � ��$ 2,3,2,3q���  � �� 2 P�  �@m�Role$ SubmenuItem=�. ���  � ��$ 2,3,2,3q��� " ��.���  � ��# �  ��  � ��$ 1q���  � ��# �  ��  � ��$ 0,2,0,2q���  � �� �� " ��.R��� $
! Menu��$��2q�$ 0Q�#��z��#��z��#��z��$" 0��#
 �  # :� $$ Rectangle.Loaded��.[��� .���� .��W� $% 0:0:0.2D�$& 1X�$' Opacity�$
( Menu��._�� .+��� #��z���� " o�.���  �@�OverridesDefaultStyle . ��  �@J�SnapsToDevicePixels . ��  � �� �� " o�.R��� #���  #���  $��1q�._��� }�. $) 
Horizontal=� . �� " ��8*   �� " m�8*   �� " o�8*   �� " ��8*   