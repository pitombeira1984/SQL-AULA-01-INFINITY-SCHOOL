CREATE DATABASE Escola;

CREATE TABLE Alunos(
	id_aluno INT auto_increment primary key,
    Nome varchar(40) not null,
    Idade int not null
);
SELECT * FROM Alunos;

CREATE TABLE Cursos(
	id_curso INT auto_increment primary key,
    Nome_Curso varchar(40) not null,
    Carga_Horaria int  not null
);
SELECT * FROM Cursos;

CREATE TABLE Matriculas(
	id_matricula INT auto_increment primary key,
    id_aluno int,
    id_curso int,
    Data_Matricula date not null
);
SELECT * FROM Matriculas;

