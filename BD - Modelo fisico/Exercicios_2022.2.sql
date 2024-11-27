//a) 

select nome
from estudantes
order by nome asc;

//b) 
select nome
from estudantes
where idestudantes in ( select  idestudantes
from  numeroreservista
where ''
order by nome asc);

//c)
select  numeroreservista 
from estudantes
where idestudantes ( select numeroreservista 
from estudante
where numeroreservista is null);

//d)
select ativa
from matriculas 
where ativa = 's';

//e)
select descricao 
from cursos 
where cargahorariatotal min(200) and max(400); 

// f)
select nomedisciplinas
from disciplinas 
where nomedisciplinas = '%info%';

//g)
select descricao
from cursos
where idcursos in ( select turnooferta
from disciplinas_cursos 
where turnooferta 'matutino' or 'noturno');
