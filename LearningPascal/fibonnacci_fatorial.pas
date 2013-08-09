{Fatorial e Fibonnacci recursivos}

program AD1_Q4;

var i, num : integer;

function Fat(x : integer) : integer; //Fatorial recursivo
  begin
    if x=0 then
      Fat:=1
    else
      Fat:=x*Fat(x-1);
  end;

function Fib(y : integer) : integer; //Fibonnacci recursivo
  begin
    if y>2 then
      Fib:=Fib(y-1)+Fib(y-2)
    else
      Fib:=y;
  end;

begin
  for i:=1 to 10 do 
   begin
     writeln ('*** Passo ', i,' ***');
     writeln('Digite um valor inteiro e positivo: ');
     readln (num);
     writeln ('O fatorial de ', num, ' é ', Fat(num)); 
     writeln ('O termo correspondente a ', num, ' na série Fibonnacci é ', Fib(num));
     writeln (''); 
   end;
end. 
