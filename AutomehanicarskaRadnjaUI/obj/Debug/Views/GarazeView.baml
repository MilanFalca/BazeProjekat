   M S B A M L   `   `   `  ����S  OAutomehanicarskaRadnjaUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:AutomehanicarskaRadnjaUI.ViewsAutomehanicarskaRadnjaUI.Views  5      /    )AutomehanicarskaRadnjaUI.Views.GarazeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:AutomehanicarskaRadnjaUI.Views     5      .��5
      � .+�5   
   �� -   5          ��Name$  DodajGarazu��5      $
��Left=�6'   $��36��6B   $��	73,23,0,0q�6N   $	��Top=�6b   $	��200��6z   .��6�   Dodaj6�   �� 5   
   -   5        $  IzmeniGarazu��5      $
��Left=�6'   $��36��6B   $��
295,23,0,0q�6N   $	��Top=�6b   $	��200��6z   .��6�   Izmeni6�   �� 5   
   -   5        $  ObrisiGarazu��5      $
��Left=�6'   $��36��6B   $��
515,23,0,0q�6N   $	��Top=�6b   $	��200��6z   .��6�   	Obriši6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ Garaze��5         SelectionMode$ Single=�6K   $
��Left=�6b   $��
240,85,0,0q�6~      CanUserAddRows .     AutoGenerateColumns .   �� SelectedItem 6#   �� *SelectedGaraza+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� 	 �� Path$	 GarazaId�  5      $ Naziv��6%    64   �� $	 Naziv�  5      $
 Broj��6%    63   �� $
	 Broj�5      5      5      