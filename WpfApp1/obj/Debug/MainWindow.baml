   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   -   5          � Title$  
MainWindow��5      .��5	      � -   5        $
��grd1��5	       � ColumnDefinitions 5
   
   �� 5      $	��37* �6   �� 5      $
��115* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��2��6,   ���	#FF00425B.+�5      �� $��ProductName��6   $��10,10,43,10q�6,   $
��22px(�6A   $��92��6Q   .��5      ]� $��Center=�6   $��	10,0,10,0q�67   .+�5      �� $	��129��6   .��6(   Add Product65   �� 5      $	��560��6    �� TextWrapping$
 Wrap=�6+   $��23��6?   6O   5      5      &   System.Windows.Controls.DataGrid  5      -   5          Name$ 
dtgProduct��5   q      AlternatingRowBackground �	#FFE4DDDD �� AlternationCount$ 0��6<   $	��103��6Q   $��	10,0,43,0q�6^      SelectionMode$ Single=�6�      AutoGenerateColumns .  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Order Id��6H      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$	 155 6l   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *
CustomerId+6l     5      $
 Customer Name��6K   $	 155 6b    6)   �� *CustomerName+6b     5      $
 	Cars Name��6F   $	 155 6Y    6)   �� *
Carsname+6Y     5      $
 
Cars Price��6H   $	 155 6\    6)   �� *	CarsPrice+6\   5      5      �� 5   
   $
��Left=�6   $��
71,230,0,0q�6/   $
��Wrap=�6C   $��Id��6W   $	��Top=�6a   $��41��6y   $��22��6�   ���	#FFE6E1E1$��18(�6�   �� 5    
   $
��Left=�6   $��
86,263,0,0q�6/   $
��Wrap=�6C   $��Customer Name��6W   $	��Top=�6l   $	��173��6�   $��37��6�   $��1��6�   ���	#FFF1EBEB$��20(�6�   �� 5!   
   $
��Left=�6   $��
23,263,0,0q�6/   $
��Wrap=�6C   $��	Cars Name��6W   $	��Top=�6h   $	��106��6�   $��37��6�   ���	#FFF9F6F6$��20(�6�   �� 5"   
   $
��Left=�6   $��
86,227,0,0q�6/   $
��Wrap=�6C   $��
Cars Price��6W   $	��Top=�6i   $	��132��6�   $��34��6�   $��1��6�   $��20(�6�   ���	#FFD1B8B86�   �� 5#   
   -   5        $��txtId��5#      {�.  $
��Left=�61   $��25��6h   $
 Wrap=�6t   $	��Top=�6�   $	��117��6�   $��129,224,0,0q�6�   $��2��6�   ��6L   �� *
CustomerId+6�   �� 5$   
   -   5        $��txtCustomerName��5$      $
��Left=�6)   $��24��6b   $
 Wrap=�6n   $	��Top=�6�   $	��146��6�   $��264,263,0,0q�6�   $��1��6�   ��6D   �� *CustomerName+6�   �� 5%   
   -   5        $��txtProductName��5%      $
��Left=�6)   $��24��6^   $
 Wrap=�6j   $	��Top=�6~   $	��117��6�   $��129,263,0,0q�6�   $��2��6�   ��6D   �� *
Carsname+6�   �� 5&   
   -   5        $��txtProductPrice��5&      $
��Left=�6)   $��25��6_   $
 Wrap=�6k   $	��Top=�6   $	��146��6�   $��218,227,0,0q�6�   $��1��6�   ��6D   �� *	CarsPrice+6�   �� 5'   
   -   5        $��btn_add��5'      $	��Add��6    $
��Left=�6.   $��
37,328,0,0q�6I   $	��Top=�6]   $	��138��6u   $��44��6�   $
��25px(�6�   6�   �� 5(   
   -	   5        $��
btn_delete��5(      $��Delete��6#   $
��Left=�64   $��
38,328,0,0q�6O   $	��Top=�6c   $	��138��6{   $��44��6�   $
��25px(�6�   $��1��6�   6�   �� 5)   
   -
   5        $��
btn_update��5)      $��Update��6#   $
��Left=�64   $��408,328,0,0q�6O   $	��Top=�6d   $	��138��6|   $��44��6�   $
��25px(�6�   $��1��6�   6�   �� 5*   
   -   5        $��	btn_clean��5*      $��Clean��6#   $
��Left=�63   $��226,328,0,0q�6N   $	��Top=�6c   $	��138��6{   $��44��6�   $
��25px(�6�   $��1��6�   6�   5,      5.      