CREATE or ALTER FUNCTION dbo.f_MesExtenso (@mes int)
RETURNS varchar(20)
AS
BEGIN
 declare @variavel varchar(20) = 'Mês Inválido!'
 If(@mes = 1)
    set @variavel = 'Jan'
 ELSE IF(@mes = 2)
    set @variavel = 'Fev'
 ELSE IF(@mes = 3)
    set @variavel = 'Mar'
 ELSE IF(@mes = 4)
    set @variavel = 'Abr'
 ELSE IF(@mes = 5)
    set @variavel = 'Mai'
 ELSE IF(@mes = 6)
    set @variavel = 'Jun'
 ELSE IF(@mes = 7)
    set @variavel = 'Jul'
 ELSE IF(@mes = 8)
    set @variavel = 'Ago'
 ELSE IF(@mes = 9)
    set @variavel = 'Set'
 ELSE IF(@mes = 10)
    set @variavel = 'Out'
 ELSE IF(@mes = 11)
    set @variavel = 'Nov'
 ELSE IF(@mes = 12)
    set @variavel = 'Dez'
 return @variavel
END


/*Outra opcao*/

CREATE FUNCTION f_MesExtenso ( @mes int )
RETURNS varchar(20)  
AS 
BEGIN 
 declare @meses varchar(50) = 'JANFEVMARABRMAIJUNJULAGOSETOUTNOVDEZ'
 return (@mes-1)*3+1
END
