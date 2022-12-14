CREATE or ALTER FUNCTION fPercentual(@valor decimal(10,2), @percentual decimal(6,2)) /*@nome_parametro  tipo_dado (tamanho)*/
RETURNS decimal(10,2)    
AS 
BEGIN 
  RETURN @valor * (1+(@percentual/100))
END

CREATE or ALTER FUNCTION fTeste() 
RETURNS int
AS 
BEGIN 
  RETURN 1
END




/*Select*/
select salario, dbo.fPercentual(salario) as 'fPercentual()', dbo.fTeste()  as 'fTeste()' from Empregado



select 
salario, 
dbo.fPercentual(salario, 40) as '+40%', 
dbo.fPercentual(salario, 50) as '+50%', 
dbo.fPercentual(salario, 60) as '+60%', 
dbo.fPercentual(salario, dbo.fTeste())  as 'fTeste()'
from Empregado