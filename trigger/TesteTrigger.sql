
Create table Cliente (Id int identity, Nome varchar(100));
 
Create table ClienteLog (Id int, Nome varchar(100), Data datetime, IdLog int identity, Operacao varchar(10));
 
-- Trigger para Insert
Create Trigger t_Cliente_I  On Cliente
After Insert As
Insert ClienteLog (Id, Nome, Data, Operacao) Select Id,Nome,Data=Getdate(),'Inclusão' From Inserted;
 
-- Trigger para Update
Create Trigger t_Cliente_U  On Cliente
After Update As
Insert ClienteLog (Id, Nome, Data, Operacao) Select Id,Nome,Data=Getdate(),'Alteração' From Inserted;

-- Trigger para Delete
Create Trigger t_Cliente_D  On Cliente
After Delete As
Insert ClienteLog (Id, Nome, Data, Operacao) Select Id,Nome,Data=Getdate(),'Deletado' From Deleted;




-- Inclusões

Insert Into Cliente Values ('Maria Damiana')
Insert Into Cliente Values ('Joaquim Freitas')
Insert Into Cliente Values ('João Da Silva')
Insert Into Cliente Values ('Mario Junior')
Insert Into Cliente Values ('José das Couves')
Insert Into Cliente Values ('Jonatan Mello')
Insert Into Cliente Values ('Ana Flavia')
Insert Into Cliente Values ('Ana Cristina Maria')

Select * From Cliente 
Select * From ClienteLog

-- Exclusões

Delete From Cliente Where Id = 1
Delete From Cliente Where Id = 3
Delete From Cliente Where Id = 5

Select * From Cliente 
Select * From ClienteLog

-- Alteracao

Update Cliente Set Nome = Upper(Nome) Where Id In (2,4,6)

Select * From Cliente 
Select * From ClienteLog


