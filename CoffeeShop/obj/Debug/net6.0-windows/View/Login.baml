   M S B A M L   `   `   `  ����E  ACoffeeShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:CoffeeShop.ViewModelCoffeeShop.ViewModel  5   	       CoffeeShop.Login   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   +vm"clr-namespace:CoffeeShop.ViewModel  5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  67   -   5        $��loginWindow��5   	     � Title$  Login��5	   	   $	��400��6   $	��650��6$    � AllowsTransparency$
 True��5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   
������  � 
ResizeMode$ NoResize=�5   	   $��16(�5   	      LoginVM � DataContext# [  5   	     MaterialDesignFont#���  5   	   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ MouseLeftButtonDown��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  	   Command	 6$   �� *MouseLeftButtonDownWindow+
   CommandParameter
 5      ��  �� ElementName$ loginWindow��5        5   
   $ Loaded��6   . 5        	 6$   �� *setLoginWindow+
 5       �� $ loginWindow��5      .��5      � $��20q�6    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5          
BlurRadius$ 30Q�6      ShadowDepth$ 1Q�5!         Opacity$	 0.4Q�5"      5$       � ColumnDefinitions 5&   
   �� 5'      $��1.25* �6   6/   �� 5(      $	��300 �6   6-   .+�5,   
   �� $��0��6    �� CornerRadius$ 	10 0 0 10��6!   ._�5-      �� $3��-/COFFEESHOP;component/Resources/Img/Login.png��6   $��UniformToFill=�5.      5/      �� 52   
   $��1��6   
�������$ 	0 10 10 0��64   6O   � 53   
   $��1��6    � RowDefinitions 54      �� 55      $��20 �6    6.   �� 56      $��1* �6    6.   .+�58      �� -   5         ��Name$ 
ControlBar��58      $��0��59       �� Orientation$ 
Horizontal=�5:      $��RightToLeft=�5;      
������ $��0 0 0 0q�5=      .+�5>      ��   MaterialDesignFlatButton#��[ 6   $��30��5?      $��20��5@      $	��5 0q�5A      $��0 5 0 0q�5B      ��5C      �� *	exitLogin+.��5D      '  !MaterialDesignThemes.Wpf.PackIcon  
���   � J� Opacity$	 0.4Q�6A      Kind$ Close=�6O   $��20��6\   $��20��6h   $��Center=�6s   $��Center=�6�   5E      �� 5G      #��[ 6   $��30��5H      $��20��5I      $	��5 0q�5J      $��0 5 0 0q�5K      ��5L      �� *minimizeLogin+.��5M        
���   �$	 0.4Q�6A   $ Minimize=�6O   $��20��6_   $��20��6k   $��Center=�6v   $��Center=�6�   5N      5O      �� 5Q      $��1��6   $��1��5R      $ Vertical=�5S      $��Center=�5T      $��Center=�5U      $	��200��5V      .+�5W      �� $��Sign in��6   $��Center=�5X      $��Center=�5Y      $��20(�5Z      $
��Bold"�5[      
��� ���$��0 0 0 10q�5]      �� 5_       % !MaterialDesignFloatingHintTextBox#��[ 6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	User name��5`         FloatingOffset$ 0 -20&�5a      
���������5c      �� *
UserName+G� 5e      -   5         G�Name$ PasswordBox��5e       ) %MaterialDesignFloatingHintPasswordBox#��[ 5f      $ Password��5g      $ 0 -20&�5h      
�������$��	0 0 0 1.5q�5j      $��0 10 0 0q�5k       5m        5n      $ PasswordChanged��6)   . 5o        	 64   �� *getPassword+
 5p       �� $ PasswordBox��5q      5s      �� 5t      $��10(�5u      $��
ExtraLight"�5v      
���  ��$��0 10 0 0q�5x      ��5t      �� *Status+5x      �� 5y      -   5         ��Name$ 	btnSignin��5y      $��Sign in��5z      $��Center=�5{      $��Center=�5|      $��0 20 0 0q�5}      
���������5      �� *loginCommand+5�      5�      5�      5�      