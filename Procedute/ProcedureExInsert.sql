Create Procedure DepartamentoInsert
( @IdDepto int
 ,@NomeDepto varchar(15)
 ,@Gerente int 
 ,@Divisao varchar(10)
 ,@Local varchar(15) )
As
INSERT INTO Departamento
           (IdDepto
           ,NomeDepto
           ,Gerente
           ,Divisao
           ,Local)
     VALUES
           (@IdDepto
           ,@NomeDepto
           ,@Gerente
           ,@Divisao
           ,@Local)
           
 #Executando          
 EXECUTE DepartamentoInsert 2001,'Artes',10,'NORDESTE','BAHIA'
 
 select * from Departamento