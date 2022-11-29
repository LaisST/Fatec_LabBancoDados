--Select
CREATE or alter PROCEDURE p_SelectAutores
AS 
 Select 
*
 From
  Autor 

--Insert
CREATE or alter PROCEDURE p_InsertAutor
( @idAutor int,
 @Nome varchar(100)
  )
As
INSERT INTO Autor
           (idautor,
            Nome)
     VALUES
           (@idAutor,
 			@Nome)

--Update
CREATE or alter Procedure p_UpdateAutor
( @IdAutor int,
 @Nome varchar(100)
 )
As

UPDATE 
 Autor 
SET 
 nome = @nome
Where idautor = @idAutor 

--Delete
CREATE or alter procedure p_DeleteAutor
( @IdAutor int)
As
Delete from Autor
Where Idautor = @IdAutor 