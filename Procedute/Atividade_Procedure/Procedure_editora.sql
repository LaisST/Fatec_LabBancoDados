--Select 
CREATE or alter PROCEDURE p_SelectEditoras
AS 
 Select 
*
 From
  Editora 


--Insert

CREATE or alter PROCEDURE p_InsertEditor
( @idEditora int,
 @Nome varchar(100),
 @Endereco varchar(100)
  )
As
INSERT INTO Editora
           (ideditora,
            Nome,
           endereco)
     VALUES
           (@idEditora,
 			@Nome,
           @Endereco)

--Update

CREATE or alter Procedure p_UpdateEditor
( @IdEditora int,
 @Nome varchar(100),
 @Endereco varchar(100)
 )
As

UPDATE 
 Editora 
SET 
ideditora = @IdEditora,
 nome = @nome,
 endereco = @endereco
Where ideditora = @ideditora 

--Delete

CREATE or alter procedure p_DeleteEditor
( @ideditora int)
As
Delete from Editora
Where ideditora = @ideditora 