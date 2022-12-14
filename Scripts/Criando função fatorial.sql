CREATE FUNCTION dbo.fatorial ( @numero int )
RETURNS int  
AS 
BEGIN 
 If(@numero <= 1)
	return 1
  return @numero * dbo.fatorial(@numero-1)
END

CREATE FUNCTION dbo.fibo(@numero int) 
RETURNS int
AS
BEGIN
 if (@numero < 2) 
	return @numero;
 return dbo.fibo(@numero - 1) + dbo.fibo(@numero - 2);
END

select dbo.fatorial(5)