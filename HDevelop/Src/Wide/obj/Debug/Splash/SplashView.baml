   M S B A M L   `   `   `  ����?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Wide.Splash.BehavioursWide.Splash.Behaviours  5   F      Wide.Splash.SplashView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    6*   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   ;
Behaviours$clr-namespace:Wide.Splash.Behaviours     6F   I EMahApps.Metro, Version=0.12.1.0, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   ,   &Wide.Splash.Behaviours.SplashBehaviour    Enabled  .  � WindowStartupLocation$ CenterScreen=�5   3    � WindowStyle$
 None=�6X    � ShowInTaskbar .   � Topmost .  � AllowsTransparency .  � SizeToContent$ Manual=�5   2   $	��540��6I   $	��360��6U    � 
ResizeMode$ NoResize=�6b    J� SnapsToDevicePixels . 
������ 	 J� OpacityMask
	 �   �
�������
 � 	Resources
 5	       �� MergedDictionaries �� Source�� 5
   
    5      �� 5      $H Bpack://application:,,,/MahApps.Metro;component/Styles/Colours.xaml?�6%   �� 5      $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?�6%   �� 5      $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?�6%   �� 5      $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $	��100 �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $	��200 �6   .+�5!   
   �� $��0��6   $��5��6   $��0��6/   $��2��6?   ���	#FF1C1C1C �� CornerRadius$ 5��5"      $��5q�6"    J� Effect 5#      3  -System.Windows.Media.Effects.DropShadowEffect  5$         Opacity$	 0.7Q�6#      ShadowDepth$ 4Q�61   5&      �� 5(   
   $��0��6   $��0��6!   $��2��61   $��Center=�6E   $��30(�6b   $
��Bold"�5)      $��0,30,0,0q�6&   $
��Wide��68   ���	#FF007ACC 5*        5+      $	 0.7Q�6#   $ 4Q�61   5-      �� 5/   
   $��2��6   $��1��6!   
���������61   �� *Status+ 50        51      $ 1Q�6#      Color$ 	#99ffffff��63   53      � 55   
    � IsIndeterminate . $��4��6-   $��0��6:   $��2��6J   $��6��6^   56      57      