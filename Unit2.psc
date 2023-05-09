{$FORM TForm2, Unit2.sfm}

uses
  Classes, Graphics, uuprog, Controls, Forms, Tools, Dialogs, StdCtrls;

procedure Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute('') then
     Begin
       LCD.Clear;
       OpenFile(OpenDialog1.FileName);
       LCD.Lines.Add( SN($3B4,$11));
       LCD.Lines.Add( GetSizeHexEdit);
     end;
     
end;








begin
end;
