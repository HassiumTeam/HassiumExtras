   M S B A M L   `   `   `  ���� ?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Wide.Splash.BehavioursWide.Splash.Behaviours     Wide.Splash.SplashView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ;
Behaviours$clr-namespace:Wide.Splash.Behaviours     I EMahApps.Metro, Version=0.12.1.0, Culture=neutral, PublicKeyToken=null;Controls,http://metro.mahapps.com/winfx/xaml/controls  ,   &Wide.Splash.Behaviours.SplashBehaviour    Enabled  .  � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � ShowInTaskbar .   � Topmost .  � AllowsTransparency .  � SizeToContent$ Manual=�$	��540��$	��360�� � 
ResizeMode$ NoResize=� J� SnapsToDevicePixels . 
������ 	 J� OpacityMask
	 �   �
�������
 � 	Resources
  �� MergedDictionaries �� Source��  �� $H Bpack://application:,,,/MahApps.Metro;component/Styles/Colours.xaml?��� $F @pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml?��� $I Cpack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml?��� $M Gpack://application:,,,/MahApps.Metro;component/Styles/Accents/Blue.xaml?�%    .���  � RowDefinitions �� $
��Auto ��� $��20 ��� $��* ��� $
��Auto ��� $	��100 � � ColumnDefinitions �� $��* ��� $	��200 �.+��� $��0��$��5��$��0��$��2�����	#FF1C1C1C �� CornerRadius$ 5��$��5q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.7Q�   ShadowDepth$ 4Q��� $��0��$��0��$��2��$��Center=�$��30(�$
��Bold"�$��0,30,0,0q�$
��Wide�����	#FF007ACC   $	 0.7Q�$ 4Q��� $��2��$��1��
����������� *Status+   $ 1Q�   Color$ 	#99ffffff���  � IsIndeterminate . $��4��$��0��$��2��$��6��