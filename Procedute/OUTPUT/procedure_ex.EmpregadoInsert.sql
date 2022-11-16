create or alter PROCEDURE EmpregadoInsert(
@IdEmpregado int,
@NomeEmpregado varchar(20),
@IdDepto int,
@Cargo varchar(6),
@Tempo_Emp int,
@Salario decimal(10,2),
@Comissao decimal(10,2), 
@TotalEmpregado int OUTPUT
) as
  insert into Empregado (IdEmpregado,NomeEmpregado, IdDepto,Cargo,Tempo_Emp,Salario,Comissao) values
  (@IdEmpregado, @NomeEmpregado, @IdDepto,@Cargo, @Tempo_Emp,@Salario,@Comissao)

  
 #Depois de rodar a procedure, rodar o execute
 
 declare @totalEmpregado int
 EXECUTE EmpregadoInsert
  (@IdEmpregado = 201,
   @NomeEmpregado="Lais",
   @IdDepto = 10,
   @Cargo = "ADM",
   @Tempo_Emp = 10,
   @Salario = 5000.00,
   @Comissao = 50.00, 
  @totalEmpregado =  COUNT(*) FROM Empregado)
 
 select * from Empregado