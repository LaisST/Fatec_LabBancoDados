CREATE table Livro (
  IdLivro int NOT NULL PRIMARY KEY,
  Titulo varchar (100),
  IdEditora int,
  CONSTRAINT IdEditora FOREIGN KEY (IdEditora) REFERENCES Editora (IdEditora)
  )
  
CREATE TABLE Editora
(
    IdEditora int NOT NULL PRIMARY KEY,
    Nome varchar(100),
    Endereco varchar(100),
  
);


CREATE TABLE Autor
(
    IdAutor int NOT NULL PRIMARY KEY,
    Nome varchar(100)
  
);

CREATE TABLE AutorLivro
(
  IdAutor int,
  Idlivro int,
  CONSTRAINT IdAutor FOREIGN KEY (IdAutor) REFERENCES Autor (IdAutor),
  CONSTRAINT IdLivro FOREIGN KEY (IdLivro) REFERENCES Livro (IdLivro)
);

insert into Editora (IdEditora, Nome,Endereco) 
VALUES
(01, 'Versus', 'Rua Magnólias'),
(02, 'Arqueiro','Rua Pereira'),
(03, 'Rocco', 'Rua Londres')

insert INTO Livro ( IdLivro, Titulo , IdEditora)
VALUES
(001, 'Harry Potter e a Pedra Filosofal', 03),
(002, 'Harry Potter e a Camara Secreta', 03),
(003, 'Harry Potter e o Prisioneiro de Azkaban', 03),
(004, 'Perdida', 01),
(005, 'Encontrada', 01),
(006, 'Prometida', 01)

insert INTO Autor ( idautor, Nome)
VALUES
(1, 'J. K. Rowling'), 
(2, 'Carina Rissi')

INSERT INTO AutorLivro(idautor, idlivro)
VALUES
(1, 001),
(1, 002),
(1, 003),
(2, 004),
(2, 005),
(2, 006)



  
  