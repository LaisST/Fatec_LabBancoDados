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

select  dbo.f_MesExtenso(1)


/*****************************************************/

CREATE or ALTER FUNCTION dbo.f_DiaSemanaExtenso (@dia int)
RETURNS varchar(20)
AS
BEGIN
 declare @variavel varchar(20) = 'Dia Inválido!'
 If(@dia = 1)
    set @variavel = 'Dom'
 ELSE IF(@dia = 2)
    set @variavel = 'Seg'
 ELSE IF(@dia = 3)
    set @variavel = 'Ter'
 ELSE IF(@dia = 4)
    set @variavel = 'Qua'
 ELSE IF(@dia = 5)
    set @variavel = 'Qui'
 ELSE IF(@dia = 6)
    set @variavel = 'Sex'
 ELSE IF(@dia = 7)
    set @variavel = 'Sab'

 return @variavel
END

select  dbo.f_DiaSemanaExtenso(1)

/******************************************************************************/

CREATE or ALTER FUNCTION dbo.f_ParImpar  (@numero int)
RETURNS varchar(20)
AS
BEGIN
 declare @calculo varchar(20)
 If(@numero%2=0)
    set @calculo = 'Par'
 ELSE 
    set @calculo = 'Impar'

 return @calculo
END

select  dbo.f_ParImpar(5)

/*********************************************************/

CREATE or ALTER FUNCTION dbo.f_PrimeiroNome(@nome varchar(100))
RETURNS varchar(100)
AS
BEGIN
 declare @index int = CHARINDEX(' ',@nome)
 
 return SUBSTRING(@nome, 1,@index)
END

select  dbo.f_PrimeiroNome('Lais Teixeira')

/*******************************************************************/

CREATE or ALTER FUNCTION dbo.f_UltimoNome(@nome varchar(100))
RETURNS varchar(100)
AS
BEGIN
	declare @inverte varchar(100) = REVERSE(@nome) 
 	declare @index int = CHARINDEX(' ',@inverte)
  	declare @subNome varchar(100) = SUBSTRING(@inverte, 1,@index)
 return reverse(@subNome)
END

select  dbo.f_UltimoNome('Lais Teixeira')

/**********************************************************************/

CREATE or ALTER FUNCTION dbo.f_Bissexto(@ano int)
RETURNS varchar(100)
AS
BEGIN
	declare @resultado varchar(100) = 'NÃO é Ano Bissexto'
    if(@ano%100 != 0 and @ano%4 = 0)
    	set @resultado = 'Ano Bissexto'

 return @resultado
END

select  dbo.f_Bissexto(1988)
