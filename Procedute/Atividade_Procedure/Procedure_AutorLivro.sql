--Select
CREATE or alter PROCEDURE p_SelectAutoresLivros
AS 
 Select 
a.idautor, 
a.Nome,
al.Idlivro, 
l.titulo, 
l.ideditora, 
e.nome,
e.Endereco
 From
  Autor a
 Inner join AutorLivro al on (a.idautor = al.idautor)
 inner join livro l on (al.Idlivro = l.idlivro)
 inner join Editora e on (l.ideditora = e.ideditora)

--Insert

CREATE or alter PROCEDURE p_InsertAutorLivro
( 
@idAutorLivro, 
@idAutor int,
 @idLivro int
  )
As
INSERT INTO AutorLivro
           (idAutorLivro , idautor,
            idlivro)
     VALUES
           (@idAutorLivro ,@idAutor,
 			@idLivro)

--Update
CREATE or alter p_UpdateAutorLivro
( @idAutorLivro int,
  @idAutor int,
 @idLivro int
  )
As

UPDATE 
 AutorLivro 
SET 
idAutorLivro = @idAutorLivro,
 idAutor = @idAutor,
 idLivro = @idLivro
Where idAutorLivro = @idautorLivro 

--Delete
CREATE or alter procedure p_DeleteAutorEditor
( @idAutorLivro int)
As
Delete from AutorLivro
Where isAutorLivro = @idAutorLivro 