-- Aula 2 --
show databases;
use alunos;
show tables;
create table aluno(
    idAluno int(11) primary key not null,
    nomeAluno varchar(40) not null
);

-- Aula 3 --
create table lancamento(
    idLancamento int(11) primary key not null,
    materia varchar(40) not null,
    nota1 float(20) not null,
    nota2 float(20) not null,
    nota3 float(20) not null,
    nota4 float(20) not null,
    total float(20) not null,
    situacao boolean not null,
    idAluno int(11) not null,
    foreign key (idAluno)
        references aluno (idAluno)
        );

-- LISTA TODOS OS DADOS DA TABELA ALUNO -- 
select * from aluno;

-- INSERIR VALORES --
insert into aluno(idAluno, nomeAluno) 
        values(123, 'Joãozinho');

-- INSERIR VALORES --
insert into lancamento (idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno)
        values(30, 'Matematica', 60.5, 60.5, 60.5, 60.5, 242, true, 789);


-- INSERIR MAIS VALORES -- 
insert into lancamento (idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno)
        values(11, 'Portugues', 45.5, 60.5, 50.5, 35.5, 192, false, 123);

insert into lancamento (idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno)
        values(21, 'Portugues', 70.5, 80.5, 88.5, 11.5, 251, true, 456);

insert into lancamento (idLancamento, materia, nota1, nota2, nota3, nota4, total, situacao, idAluno)
        values(31, 'Portugues', 50.0, 45.0, 50.0, 55.0, 200, true, 789); 

        -- SABER A SITUAÇÃO -- 
        select *, if(situacao,'Aprovado','Reprovado') as coluna from lancamento where idaluno = 123;