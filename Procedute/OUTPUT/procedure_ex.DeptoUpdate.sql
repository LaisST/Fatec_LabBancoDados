create or alter PROCEDURE DepartamentoUpdate(
  @iddepto int, 
  @nomedepto varchar(15), 
  @gerente int, 
  @divisao varchar(10), 
  @local varchar(15)
  ) as
  update Departamento SET
  nomedepto=@nomedepto, gerente=@gerente, divisao = @divisao, local=@local
  where iddepto=@iddepto
  
 #Depois de rodar a procedure, rodar o execute
 
 EXECUTE DepartamentoUpdate
 @IdDepto =10,
 @NomeDepto = 'DIRETORIAX' ,
 @Gerente = 2,
 @Divisao = 'SUDOESTE',
 @Local ='SAO PAULO'
 
 select * from Departamento