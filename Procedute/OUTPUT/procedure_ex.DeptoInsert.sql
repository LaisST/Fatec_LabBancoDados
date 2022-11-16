create or alter PROCEDURE DepartamentoInsert(
  @iddepto int, 
  @nomedepto varchar(15), 
  @gerente int, 
  @divisao varchar(10), 
  @local varchar(15)
  ) as
  insert into Departamento (iddepto, nomedepto, gerente, divisao, local) values
  (@idDepto, @nomedepto, @gerente, @divisao, @local)

  
 #Depois de rodar a procedure, rodar o execute
 
 EXECUTE DepartamentoInsert
 @IdDepto =60,
 @NomeDepto = 'RH' ,
 @Gerente = 3,
 @Divisao = 'SUDOESTE',
 @Local ='COTIA'
 
 select * from Departamento