--Select
CREATE PROCEDURE p_SelectLivros
AS 
 Select 
  l.idlivro,
  l.Titulo,
  a.Nome as 'Editora'
 From
  Livro l
  Inner Join Editora a On (l.ideditora = a.ideditora)

--Insert
CREATE PROCEDURE p_InsertLivro
( @idLivro int,
 @Titulo varchar(100),
 @idEditora int 
  )
As
INSERT INTO Livro
           (idlivro,
            titulo,
          	ideditora)
     VALUES
           (@idLivro,
 			@Titulo,
 			@idEditora)

--Update
CREATE Procedure p_UpdateLivro
( @IdLivro int,
 @Titulo varchar(100),
 @idEditora int 
 )
As

UPDATE 
 Livro 
SET 
 titulo = @Titulo, 
 ideditora = @IdEditora
Where idlivro = @idLivro 

--Delete
CREATE or alter procedure p_DeleteLivro
( @IdLivro int)
As
Delete from Livro
Where idlivro = @idLivro 