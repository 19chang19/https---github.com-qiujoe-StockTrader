   M S B A M L   `   `   `  ����  	StockTech%    StockTech.Download.DayDbDownDlg   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  下载日线��5   
   $	��200��6   $	��300��6$   $	��200��5   	   $	��300��6    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$ 
ToolWindow=�5   	   .��5      �  � RowDefinitions 5	   
   �� 5
      $��24 �6   �� 5      $��24 �6   �� 5      $��24 �6   �� 5      $��24 �6   �� 5      $��24 �6   �� 5      $��24 �6   �� 5      $��24 �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ textblockTitle��5      下载按日日线数据...69   �� 5   
   -   5        $ textCurrentDown��5   !   $��1��6   正在下载:6A   � 5   
   -   5        $��progressBar��5   G   $��Stretch=�6   $��2,2,2,2q�66   $��2��6[   � 5   
   -   5        $��grid1��5   -   $��3��6   $��0,0,0,0q�6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��64 �6#   �� 5      $��64 �6#   .+�5      �� -   5        $��
pathTxtblk��5      6,   �� 5      -   5        $��buttonStart��5   $   $��开始��6   $��2,2,2,2q�68   $��2��6I   6Y   5       5"      5#      