CREATE DATABASE Escola;

USE escola;

CREATE TABLE alunos(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    idade INT NOT NULL
);

SELECT * FROM alunos;

CREATE TABLE cursos(
	id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(40) NOT NULL,
    carga_horaria INT NOT NULL
);

SELECT * FROM cursos;

CREATE TABLE matricula(
	id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
    data_matricula DATETIME NOT NULL
);

SELECT * FROM matricula;

INSERT INTO alunos (nome, idade) VALUES ('Tiago', 41), ('Waleska', 40), ('Calebe', 6);

INSERT INTO cursos (nome_curso, carga_horaria) VALUES ('Programação', 50), ('Contabilidade', 60), ('Robótica', 30);

INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES (1, 1, NOW()), (2, 2, NOW()), (3, 3, NOW());

TRUNCATE TABLE matricula; -- Excluindo os dados da tabela matricula, mantendo a estrutura da tabela.--

DROP DATABASE escola; -- Excluindo todo os banco de dados "escola" --


