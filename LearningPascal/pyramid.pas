{Printa pirâmide}

program AD1_Q1;

function imprime_matriz (var x : integer) : integer;
  var i,j : integer;
  begin
    for i:=x downto 1 do
      begin
        for j:=x downto i do
          begin
            write ((i*i):5);
          end;
        writeln;
      end;
end;

var n : integer;

begin
  writeln ('Indique um inteiro positivo e não-nulo: ');
  readln (n);
    if n < 1
      then begin
        writeln ('Entrada inválida. O número deve ser maior ou igual a 1.');
      end
      else begin
        imprime_matriz(n);
      end;
  readln;
end.
