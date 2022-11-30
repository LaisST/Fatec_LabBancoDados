-- Tabela Professor
CREATE table Professor (
matricula int,
nome varchar(40) not null,
RG numeric(10) unique,
sexo char(1) check(sexo in ('M','F')),
idade tinyint check(idade between 21 and 80),
nroTurmas tinyint check(nroTurmas >= 0),
constraint pkProf primary key (matricula) );

-- Tabela ProfessorTurma
CREATE TABLE ProfessorTurma (
  matricula INT,
  turma INT,
  CONSTRAINT pkProfTurma PRIMARY KEY (matricula,turma),
  CONSTRAINT fkProf FOREIGN KEY (matricula) REFERENCES Professor(matricula) );
  
select * from Professor
SELECT * from ProfessorTurma

select p.matricula, 
COUNT(t.turma) as 'Qtde Turma'
from Professor P
inner join ProfessorTurma t on (p.matricula = t.matricula)
group by p.matricula

insert into Professor (matricula, nome, rg, sexo, idade, nroturmas) VALUES
(1, 'Ana', 123456, 'f', 40, 0),
(2, 'Eliana', 654321, 'f', 35, 0),
(3, 'João', 258963, 'm', 25, 0)


select * from Professor
select * from ProfessorTurma

insert into ProfessorTurma (matricula, turma) VALUES
(2, 6)

DELETE from ProfessorTurma where matricula = 1 and turma = 3

--///////////////////////////////////////////////////////////////////////////////////

4.Considere as tabelas a seguir para responder as questões 5 e 6:


-- Tabela Produto
CREATE table Produto (
idProduto int,
nomeProduto varchar(40) not null,
quantidadeEstoque int,
constraint pkProduto primary key (idProduto) );

-- Tabela VendaProduto
CREATE TABLE VendaProduto (
  idVenda int identity,
  idProduto INT,
  quantidadeVenda int,
  CONSTRAINT pkVenda PRIMARY KEY (idVenda),
  CONSTRAINT fkProd FOREIGN KEY (idProduto) REFERENCES Produto(idProduto) );
  
  