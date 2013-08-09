{Compara valores, sem usar array}

program AD1_Q2;

var n, maiorNum, menorNum, contaPar, contaImpar, totalPar, totalImpar : integer;

mediaPar, mediaImpar: real;

begin
	contaImpar:=0;
	contaPar:=0;
	writeln ('Insira um número: ');
	readln(n);
	if n=0 then begin
      writeln ('Valor inválido.');
    end
    else begin
  		maiorNum:=n;
  		menorNum:=n;
  
  		if (n mod 2) = 0 
    		then begin
      		contaPar:=1;  
      		totalPar:=n;
    		end
    		else begin
      		contaImpar:=1;
      		totalImpar:=n;
    		end;
	
	  while n>0 do
	    begin
	        writeln ('Insira outro número: ');
	        readln(n);
      if n<>0 then begin
	        if maiorNum<n then
	         maiorNum:=n;

	        if menorNum>n then
	         menorNum:=n; 
      
	        if (n mod 2) = 0 
	          then begin
	            contaPar:=contaPar+1;
	            totalPar:=totalPar+n;
	          end
	          else begin
	            contaImpar:=contaImpar+1;
	            totalImpar:=totalImpar+n;
	        end;        
	      end;
	    end;

	  if(contaPar<>0) then
			mediaPar:=totalPar/contaPar;
	  if(contaImpar<>0) then
		  mediaImpar:=totalImpar/contaImpar;

	  writeln ('Foram digitados ', contaPar, ' números pares.');
	  writeln ('Foram digitados ', contaImpar, ' números ímpares.');
	  writeln ('A média dos números pares é ', mediaPar:2:1);
	  writeln ('A média dos números ímpares é ', mediaImpar:2:1);
	  writeln ('O maior número positivo lido foi ', maiorNum);  
		writeln ('O menor número positivo lido foi ', menorNum);      
	end;
end.
