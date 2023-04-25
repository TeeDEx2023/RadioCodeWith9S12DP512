uses uuprog;

function SN(start:Integer; iloscZankow:Integer):String;
var
 ciag:String;
 i:Integer;
Begin
 ciag:='';
 For i:=start to   (start+iloscZankow)-1 do
   ciag:=ciag+ chr(GetByteHexEdit(i));
   Result:= ciag;
end;

function swapSN (Start: Integer; IloscZnakow: Integer):String;
var
  ciag,a,b:String;
  i:Integer;
Begin
   ciag:='';  
   For i:=Start to (Start+IloscZnakow)-1 do   
     begin
       a:=chr(GetByteHexEdit(i)); 
       b:=chr(GetByteHexEdit(i+1));   
       i:=i+1;     
       ciag:=ciag+b+a;
     end;  
       Result:=ciag;
end;

