   M S B A M L   `   `   `  ����S  OAutomehanicarskaRadnjaUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:AutomehanicarskaRadnjaUI.ViewsAutomehanicarskaRadnjaUI.Views  5      9    3AutomehanicarskaRadnjaUI.Views.TehnickiPreglediView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      >local,clr-namespace:AutomehanicarskaRadnjaUI.Views     5      .��5
      � .+�5   
   �� -   5          ��Name$  DodajTehnickiPregled��5      $
��Left=�60   $��36��6K   $��	73,23,0,0q�6W   $	��Top=�6k   $	��200��6�   .��6�   Dodaj6�   �� 5   
   -   5        $  IzmeniTehnickiPregled��5      $
��Left=�60   $��36��6K   $��
295,23,0,0q�6W   $	��Top=�6k   $	��200��6�   .��6�   Izmeni6�   �� 5   
   -   5        $  ObrisiTehnickiPregled��5      $
��Left=�60   $��36��6K   $��
515,23,0,0q�6W   $	��Top=�6k   $	��200��6�   .��6�   	Obriši6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ TehnickiPregledi��5         SelectionMode$ Single=�6^   $
��Left=�6u   $��
240,85,0,0q�6�      CanUserAddRows .     AutoGenerateColumns .   �� SelectedItem 6-   �� *SelectedTehnickiPregled+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� 	 �� Path$	 TehnickiPregledId�  5      $ 	Zaposleni��6%    68   �� $	 ZaposleniZaposleniId�  5      $ Status��6%    65   �� $	 Status�5      5      5      