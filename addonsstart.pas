{$apptype windows}
{$reference 'System.Windows.Forms.dll'}
{$reference 'System.Drawing.dll'}
program addons;
uses System.Windows.Forms;
const 
  BatFileExt = 'bat';
  BatFileFilter = 'Расширение браузера Turtle WebNavigator/пакетный файл (*.'+BatFileExt+')|*.'+BatFileExt;
   begin
  var sd := new OpenFileDialog;
  sd.DefaultExt := BatFileExt;
  sd.Filter := BatFileFilter;
  if sd.ShowDialog = DialogResult.OK then 
  Execute(sd.FileName);
end.
  
  
 