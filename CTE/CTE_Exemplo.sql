WITH total (idDepto, Departamento, Nome, Salario, Commissao, [salario + comissao])
as (
select 
d.iddepto,
d.nomedepto,
e.nomeempregado,
e.salario,
e.comissao,
e.salario + isnull(e.comissao, 0) as 'Salario e Comissão'
from
Departamento d
inner join Empregado e On (e.iddepto = d.IdDepto)
 ),
 totalDepartamento (iddepto, salarioTotal)
 as (
   select
   iddepto,
sum(salario)
FROM empregado
group by iddepto
)

select t.*, td.salarioTotal,
cast (t.salario / td.salarioTotal * 100 as decimal(10,2)) as '% Sal. Depto'
 from total as t
 inner join totalDepartamento as td on (td.iddepto = t.iddepto)
 order by Departamento
 