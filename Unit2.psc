{$FORM TForm2, Unit2.sfm}

uses
  Classes, Graphics,  uuprog, Controls, Forms, Tools, xHexEdit, Dialogs, StdCtrls;

var
Code,cyfraKodu: string;
x: integer;
                                        
procedure ustawKod;
begin 
  case ord(Code[x]) of
     $65: cyfraKodu :='0';
     $66: cyfraKodu :='0';
     $67: cyfraKodu :='0';
     $68: cyfraKodu :='0';

     $77: cyfraKodu :='1';
     108: cyfraKodu :='1';
     109: cyfraKodu :='1';
     110: cyfraKodu :='1';

      96: cyfraKodu :='2';
      97: cyfraKodu :='2';
     117: cyfraKodu :='2';
     118: cyfraKodu :='2';

     126: cyfraKodu :='3';
     100: cyfraKodu :='3';
     125: cyfraKodu :='3';
      87: cyfraKodu :='3';

      70: cyfraKodu :='4';
      69: cyfraKodu :='4';
     120: cyfraKodu :='4';
      39: cyfraKodu :='4';

      78: cyfraKodu :='5';
     124: cyfraKodu :='5';
      77: cyfraKodu :='5';
      55: cyfraKodu :='5';

     112: cyfraKodu :='6';
     101: cyfraKodu :='6';
      86: cyfraKodu :='6';
       7: cyfraKodu :='6';

      94: cyfraKodu :='7';
      93: cyfraKodu :='7';
     116: cyfraKodu :='7';
      23: cyfraKodu :='7';

      38: cyfraKodu :='8';
      72: cyfraKodu :='8';
      37: cyfraKodu :='8';
     231: cyfraKodu :='8';

      46: cyfraKodu :='9';
      45: cyfraKodu :='9';
      76: cyfraKodu :='9';
     247: cyfraKodu :='9';
     end;
end;

procedure Button1Click(Sender: TObject);
var
n1,n2,n3,n4:string;
begin
  if OpenDialog1.Execute('') then
     Begin     
       LCD.Clear;       
       OpenFile(OpenDialog1.FileName);
       LCD.Lines.Add( SN($3B4,$11));       
       LCD.Lines.Add( GetSizeHexEdit);
     end;

      Code:=  chr($20 XOR GetByteHexEdit($7D0))+
              chr($20 XOR GetByteHexEdit($7CE))+
              chr($20 XOR GetByteHexEdit($7D1))+
              chr($20 XOR GetByteHexEdit($7CF));  //}

   { Code:=   chr($20 XOR GetByteHexEdit($FD0))+
              chr($20 XOR GetByteHexEdit($FCE))+
              chr($20 XOR GetByteHexEdit($FD1))+
              chr($20 XOR GetByteHexEdit($FCF));      //}
      LCD.Lines.add(Code);

      x:=1;
      ustawKod;
      n1:=cyfraKodu;

      x:=2;
      ustawKod;
      n2:=cyfraKodu;

      x:=3;
      ustawKod;
      n3:=cyfraKodu;

      x:=4;
      ustawKod;
      n4:=cyfraKodu;

      Code:= n1+n2+n3+n4;
       LCD.Lines.add(Code);



end;

begin
end;
