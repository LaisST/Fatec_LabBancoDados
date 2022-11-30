Create or alter Trigger t_nroTurmas
On ProfessorTurma
After INSERT As
UPDATE Professor SET nroturmas = (nroturmas +1)
    WHERE matricula = (select matricula from Inserted)

//////////////////////////////////////////

Create or alter Trigger t_nroTurmasMenos
On ProfessorTurma
After DELETE As
UPDATE Professor SET nroturmas = (nroturmas -1)
    WHERE matricula = (select matricula from Deleted)