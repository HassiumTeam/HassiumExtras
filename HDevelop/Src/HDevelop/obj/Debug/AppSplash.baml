   M S B A M L   `   `   `  ����?  ;Wide, Version=0.2.0.0, Culture=neutral, PublicKeyToken=nullM2clr-namespace:Wide.Splash.Behaviours;assembly=WideWide.Splash.Behaviours  5   	    HDevelop   HDevelop.AppSplash   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    6&   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   I
Behaviours2clr-namespace:Wide.Splash.Behaviours;assembly=Wide     5   	   ,   &Wide.Splash.Behaviours.SplashBehaviour    Enabled  . $	��540��5      $	��360��6&    J� SnapsToDevicePixels .  � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�6    � ShowInTaskbar .   � WindowStyle$
 None=�6Z    � AllowsTransparency . 
������ .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��20 �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $	��100 �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $	��200 �6   .+�5   
   �� $��0��6   $��5��6   $��0��6/   $��2��6?   ���	#FF1C1C1C	 �� CornerRadius$	 5��5      $��5q�6"   
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.7Q�6#      ShadowDepth$ 4Q�61   5      �� 5   
   $��0��6   $��0��6!   $��2��61   $��Center=�6E   $��30(�6b   $
��Bold"�5      $��0,30,0,0q�6&   $��HDevelop��68   ���	#FF007ACC
 5         5!      $	 0.7Q�6#   $ 4Q�61   5#      �� 5%   
   -   5         ��Name$ templateTextBlock��5%   !   $��2��6   $��1��6<   
���������. ��6L   �� *Status+ �� NotifyOnTargetUpdated . 
 5&        5'      $ 1Q�6#      Color$ 	#99ffffff��63    � Triggers 5)      :� 5*       :� RoutedEvent$ Binding.TargetUpdated��6   .[�5+      �� .��5,      ��  g� AutoReverse . .��5-      W�  �� 
TargetName$ templateTextBlock��6.    �� TargetProperty$ Opacity�6X   	 W� To$ .1X�6|    g� Duration$ 0:0:.6D�6�   5.      5/      50      52      � 54   
    � IsIndeterminate . $��4��6-   $��0��6:   $��2��6J   $��6��6^   55      56      