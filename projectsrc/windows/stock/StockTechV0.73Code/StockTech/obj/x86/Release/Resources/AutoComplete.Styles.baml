   M S B A M L   `   `   `  ���� \  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   SearchToggleButton �� 
TargetType � ColumnDefinitions ��Name  NormalBrush  NormalBorderBrush  WindowBackgroundBrush F�Name  
GlyphBrush ��Name �� Triggers P� Property	 P� Value
 �� 
TargetName  	DarkBrush �� Value �� Property  PressedBrush  DisabledBackgroundBrush  DisabledBorderBrush 	 DisabledForegroundBrush 
 AutoCompleteComboBox �� 
TargetType  
ComboBoxEx �� BasedOn �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name �� 
IsReadOnly �� 
IsReadOnly �� IsDropDownOpen � AllowsTransparency J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight  SolidBorderBrush K� IsItemsHost-    'System.Windows.Input.KeyboardNavigation     DirectionalNavigation! P� 
SourceName�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml        �� $% /Resources/ComboBox.Styles.xaml?�%�  &	        7  7  7  7  7  7  7  7  7  7 	 7 	 &	
 ;    7  7   7  7  7 	 �� " d�.R��  �� �� $��20 �.+��� $ Border��$��2��8��  8�� $��1q��� $��0��$��1q�8�� 8�� $��0,0,1,0q�F� $ Arrow��$��1��8�� $��Center=�$��Center=��� $ 	ImageLook��$��1��$��Center=�$��Center=�$��15��$��15��|�.  ����/Icons/lookup.png�� P�  �@J�IsMouseOver	 . . ��� $
 Border��8   � ��P�  �@d�	IsChecked$
	 trueY�. ��� $
 Border��8   � ��P�  � {�	 .  . ��� $
 Border��8   � ���� $
 Border��8   � ���� 8 	  � ���� $
 Arrow��8 
  � ���� " ��8   .���  � �� �� " ��.R�� .+�d� $��ToggleButton��8�� $��2��|�.  $ Press=� �� $ IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+�� $��ContentSite�� .  #��z #��z #��z��$��1q�$��Center=�$
��Left=��� $ PART_EditableTextBox��$
��Left=�$��Center=�$��1q�|�. $��0q�#��z��$y�Hidden=�# z #��z��� $��Popup��$��Bottom=�#��z  . |�.  $��Slide=�.��� $��DropDown�� . #��z #��z .+��� $ DropDownBorder��8�� $��1q�8�� �� $��4,6,4,6q� . .����  . $  	Contained=� P�  �@��HasItems	 .  . ��� $
 DropDownBorder�� � ��$ 95��P�  � {�	 .  . ��� 8   � ��P�  �@��
IsGrouping	 . . ���  � �� .  P� $! Popup�� �@�AllowsTransparency	 . . ��� $
 DropDownBorder�� � ��$ 0,2,0,0q�P�  �@��
IsEditable	 . . ���  � �� .  �� $
 PART_EditableTextBox�� � y�$ Visible=��� $
 ContentSite�� � y�$ Hidden=�