   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089I EMahApps.Metro, Version=0.12.1.0, Culture=neutral, PublicKeyToken=null    BooleanToVisibilityConverter  MetroBaseWindowButtonStyle  �� 
TargetType �� Property  WindowTitleColorBrush �� Value �� 
TargetType �Name ��Name J� SnapsToDevicePixels J� Opacity �� Triggers	 P� Property
 P� Value �� 
TargetName   ControlHighlightedColorBrush  AccentColorBrush  MetroWindowButtonStyle �� BasedOn1   +MahApps.Metro.Controls.WindowButtonCommands  
BlackBrush �� Orientation ��Name �� Mode �� RelativeSource �� AncestorType(  "MahApps.Metro.Controls.MetroWindow � ToolTip �� 	Converter �� ElementName �� Path F�Name �� Triggers �� Binding �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      ;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      %�  &	        &	      &	 �    7  '   �    7   7   7   �� 5      6#   �� 5      "  ��6/   .�5	   
   ��  � ��# �  6'   �� 5
   
    � ��# � ��6'   �� 5   
    � ��$ Center=�67   �� 5   
    � ��$ Center=�65   �� 5   
    � ��$ 1q�6$   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      � $
 grid��6   #��z��6)   .+�5      �� $ contentPresenter��6+   #��z��6E   #��z��6�   #��z��6�   # z 6�   ��. $
 0.75Q�6A  5       5      P� 5      	 �@J�IsMouseOver
 . . �5      �� $ contentPresenter��6%    �@J�Opacity$ 1Q�6V   �� 5      $
 grid��6%   # �  6M    � ��5      P� 5      	 �@J�IsMouseOver
 .  . �5      �� $ contentPresenter��6%    �@J�Opacity$ .5Q�6V   5      P� 5      	 � ��
 . . �5      �� $
 grid��6%   # �  6M    � ��5      P� 5      	 � {�
 .  . �5       ��  � �� �#ADADAD6;   5!      5#      5%      5&      �� 5)      "  ��6+   8   .�5*   
   ��  �@�FocusVisualStyle 6-   Z� �� 5+   
    � �� .  6&   �� 5,   
    � ��$ 34��6"   �� 5-   
    � ��$ 34��6&   �� 5.   
    � ��$ 0q�6$   5/      �� 51      "    6   .�52   
   ��  � ��# �  53      �� 54   
    � �� .  55      �� 56   
    � ��$ Center=�57      �� 58   
    �@�FocusVisualStyle 59      Z� �� 5:   
    � �� 5;      �� 5<      "   6"   .R�5=      �� $ 
Horizontal=�6!   .+�5?      �� $ PART_Min��6!   #��z��5B   !   ��5@   !   �� *TitlebarHeight+$ OneWay=� �� $ Controls:MetroWindowL���5A   !   �� *WindowMinButtonStyle+$ OneWay=� �� *FindAncestor+"   5C   !   �� *
Minimize+ �� *FindAncestor+"   y�5D   !   �� *ShowMinButton+ �� *FindAncestor+"  8   .��5E      F� 4����    ��[ �    @T� �@T� @T� �@T� ��[ �    ��[  . ��5G   #   �� $ PART_Min��$ 
Foreground�5H      �� 5J      $ PART_Max��6!   #��z��5M   !   ��5K   !   �� *TitlebarHeight+$ OneWay=� �� $ Controls:MetroWindowL���5L   !   �� *WindowMaxButtonStyle+$ OneWay=� �� *FindAncestor+"   5N   !   �� *
Maximize+ �� *FindAncestor+"   y�5O   !   �� *ShowMaxRestoreButton+ �� *FindAncestor+"  8  .��5P      � .+�5Q   "   F� $ MaximisePath��6'    . a����        �    @T� �@T� @T� �@T�     �        �    ��- � z ��- � z  z �@B  z �@B ��- #��z��5T   '   F� 5U   "   $ RestorePath��6'    . �����    ��� �    ��- ���- ��- ���-     р��     р�� �� � 	= �� � 	= ��- ���j ��- ���j ��[ р�[ ��[ р�[ @KL �@B @KL �@B ��� �@B ��� ���j ��� ���j ��j р�� ��j р�� �� �@T� �� �@T� ��[ р�[ ��[ р�[ @T� �@B @T� #��z��5X   '   5Y      5Z      �� 5\      $ 
PART_Close��6!   #��z��5_   !   ��5]   !   �� *TitlebarHeight+$ OneWay=� �� $ Controls:MetroWindowL���5^   !   �� *WindowCloseButtonStyle+$ OneWay=� �� *FindAncestor+"   5`   !   �� *Close+ �� *FindAncestor+"   y�5a   !   �� *ShowCloseButton+ �� *FindAncestor+"  8  .��5b      F� |����        р�     �@KL ��- � z     р��     р�[  	= р��  z � z  z �@KL @KL р�  z �     z � 	=  	= �         . #��z��5d   #   5e      5f      5h      5j       5k   
   �� 5l       6   �� *ShowTitleBar+ �� *FindAncestor+"   True5m      .a�5n      ��  � ��# �  5o      5p      �� 5q       6   �� *ShowTitleBar+ �� *FindAncestor+"  	 False5r      .a�5s      ��  � ��
 ���� 5t      5u      5w      5x      