   M S B A M L   `   `   `  ����S  OAutomehanicarskaRadnjaUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:AutomehanicarskaRadnjaUI.ViewsAutomehanicarskaRadnjaUI.Views  5      3    -AutomehanicarskaRadnjaUI.Views.AutomobiliView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:AutomehanicarskaRadnjaUI.Views     5      .��5
      � .+�5   
   �� -   5          ��Name$  DodajAutomobil��5      $
��Left=�6*   $��36��6E   $��	73,23,0,0q�6Q   $	��Top=�6e   $	��200��6}   .��6�   Dodaj6�   �� 5   
   -   5        $  IzmeniAutomobil��5      $
��Left=�6*   $��36��6E   $��
295,23,0,0q�6Q   $	��Top=�6e   $	��200��6}   .��6�   Izmeni6�   �� 5   
   -   5        $  ObrisiAutomobil��5      $
��Left=�6*   $��36��6E   $��
515,23,0,0q�6Q   $	��Top=�6e   $	��200��6}   .��6�   	Obriši6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
Automobili��5         SelectionMode$ Single=�6R   $
��Left=�6i   $��
240,85,0,0q�6�      CanUserAddRows .     AutoGenerateColumns .   �� SelectedItem 6'   �� *SelectedAutomobil+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� 	 �� Path$	 AutomobilId�  5      $ Marka Automobila��6%    6?   �� $	 MarkaAutomobila�  5      $ Godina proizvodnje��6%    6A   �� $	 GodinaProizvodnje�  5      $ Broj sasije��6%    6:   �� $	 
BrojSasije�5      5      5      