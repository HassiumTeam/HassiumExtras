   M S B A M L   `   `   `  ���� ?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullM2clr-namespace:Wide.Splash.Behaviours;assembly=WideWide.Splash.Behaviours   HDevelop   HDevelop.AppSplash   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     I
Behaviours2clr-namespace:Wide.Splash.Behaviours;assembly=Wide     ,   &Wide.Splash.Behaviours.SplashBehaviour    Enabled  . $	��540��$	��360�� J� SnapsToDevicePixels .  � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � ShowInTaskbar .   � WindowStyle$
 None=� � AllowsTransparency . 
������ .���  � RowDefinitions �� $
��Auto ��� $��20 ��� $��* ��� $
��Auto ��� $	��100 � � ColumnDefinitions �� $��* ��� $	��200 �.+��� $��0��$��5��$��0��$��2�����	#FF1C1C1C	 �� CornerRadius$	 5��$��5q�
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect     Opacity$	 0.7Q�   ShadowDepth$ 4Q��� $��0��$��0��$��2��$��Center=�$��30(�$
��Bold"�$��0,30,0,0q�$��HDevelop�����	#FF007ACC
   $	 0.7Q�$ 4Q��� -    ��Name$ templateTextBlock��$��2��$��1��
���������. ���� *Status+ �� NotifyOnTargetUpdated . 
   $ 1Q�   Color$ 	#99ffffff�� � Triggers :�  :� RoutedEvent$ Binding.TargetUpdated��.[��� .����  g� AutoReverse . .��W�  �� 
TargetName$ templateTextBlock�� �� TargetProperty$ Opacity�	 W� To$ .1X� g� Duration$ 0:0:.6D��  � IsIndeterminate . $��4��$��0��$��2��$��6��