/*Praticando: Crie um banco de dados chamado escola e dentro dele, crie uma tabela chamada alunos.
Após criar a tabela, insira pelo menos 5 registros de alunos com diferentes nomes, idades e notas.*/

/*Criando e usando o banco de dados - DDL*/
CREATE DATABASE escola_fb;
USE escola_fb;

/*Cria a tabela alunos_fb*/
CREATE TABLE alunos_fb (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    dt_nasc DATE,
    serie INT,
    turma VARCHAR(5),
    materia VARCHAR(25),
    nota DECIMAL(10, 2)
);

/* Insere registros na tabela alunos_fb*/
INSERT INTO alunos_fb (nome, idade, dt_nasc, serie, turma, materia, nota) VALUES
    ('João Silva', 15, '2008-05-12', 9, 'A', 'Matemática', 8.5),
    ('Maria Oliveira', 14, '2009-03-25', 8, 'B', 'Português', 9.0),
    ('Carlos Souza', 16, '2007-11-30', 10, 'C', 'História', 7.8),
    ('Ana Costa', 15, '2008-07-18', 9, 'A', 'Ciências', 6.5),
    ('Pedro Santos', 14, '2009-02-14', 8, 'B', 'Geografia', 8.9);
    
/*consultando*/
SELECT*FROM alunos_fb;
    
/*Modificar um registro específico - DQL*/
UPDATE alunos_fb SET serie = 7 WHERE id = 3 ;
/*Modificar todos os registros onde a série é 10:*/
UPDATE alunos_fb SET serie = 7 WHERE serie = 10;

/*O UPDATE indica que está modificando dados na tabela alunos_fb. O SET define que a coluna serie será alterada 
para 7 e O WHERE garante que apenas o registro com id = 3 será alterado */
    
/*consultando DQL*/
SELECT*FROM alunos_fb;
    


    