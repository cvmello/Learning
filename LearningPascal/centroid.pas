program AD1_Q3;

var 
x, y, 
armazenaX, armazenaY, // Soma total das variáveis X e Y 
contaX, contaY, // Qtd de vezes que X e Y foram inseridos
melhorX, melhorY : integer; // Armazena X,Y mais próximo do par 150,150

distInicial, distXY, centrX, centrY : real;

procedure medX (var x : integer);
  begin 
    armazenaX:=x+armazenaX;
    contaX:=contaX+1;
  end;

procedure medY (var y : integer); 
  begin
    armazenaY:=y+armazenaY;
    contaY:=contaY+1;
  end;
 
begin
  armazenaX:=0; armazenaY:=0; contaX:=0; contaY:=0; centrX:=0; centrY:=0;
  writeln('Digite um par ordenado (X,Y): ');
  readln (x,y);
  if (x<>0) and (y<>0) then begin
    medX(x); medY(y); 
    distInicial:=sqrt((x-150)*(x-150)+(y-150)*(y-150));
		melhorX:=x; melhorY:=y; 
  end; 
  while (x<>0) and (y<>0) do
    begin
      writeln('Digite outro par ordenado (X,Y): ');
      readln(x,y);
      if (x<>0) then begin
       medX(x); 
      end;
      if (y<>0) then begin
        medY(y);
      end;
			if (x<>0) and (y<>0) then begin  
      	distXY:=sqrt((x-150)*(x-150)+(y-150)*(y-150));
      		if (distXY < distInicial) then 
        		melhorX:=x; melhorY:=y; 
			end;
    end;
  centrX:=armazenaX/contaX; 
  centrY:=armazenaY/contaY; 
  writeln ('A média dos valores X e Y inseridos é (', centrX:2:1, ',', centrY:2:1, ')');
  writeln ('Os pontos (X,Y) mais próximos do par ordenado (150,150) foram (', melhorX, ',', melhorY, ')');
  readln;
end.
