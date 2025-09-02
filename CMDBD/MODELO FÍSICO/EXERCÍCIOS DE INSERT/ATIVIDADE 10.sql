CREATE DATABASE atividade10;
USE atividade10;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    turno ENUM('M', 'V', 'N') NOT NULL
);

INSERT INTO cliente (nome, sobrenome, cpf, turno) VALUES
('Carla', 'Silva', '58588513636', 'V'),
('Pedro', 'Souza', '21936216434', 'M'),
('Leonardo', 'Azevedo', '67828203186', 'N'),
('Paula', 'Martins', '52291852700', 'V'),
('Jéssica', 'Pereira', '29023136305', 'V'),
('Camila', 'Rocha', '47371884380', 'N'),
('José', 'Silva', '77249832191', 'M'),
('Marcelo', 'Souza', '33600044896', 'M'),
('Mônica', 'Martins', '77910572670', 'V'),
('Vitor', 'Machado', '60862093388', 'N');

ALTER TABLE cliente 
ADD COLUMN nascimento DATE AFTER sobrenome;

UPDATE cliente SET nascimento = '1995-03-12' WHERE id = 1;
UPDATE cliente SET nascimento = '1990-07-22' WHERE id = 2;
UPDATE cliente SET nascimento = '1998-11-05' WHERE id = 3;
UPDATE cliente SET nascimento = '1992-02-18' WHERE id = 4;
UPDATE cliente SET nascimento = '1996-09-30' WHERE id = 5;
UPDATE cliente SET nascimento = '1994-12-15' WHERE id = 6;
UPDATE cliente SET nascimento = '1989-04-03' WHERE id = 7;
UPDATE cliente SET nascimento = '1991-06-27' WHERE id = 8;
UPDATE cliente SET nascimento = '1997-10-08' WHERE id = 9;
UPDATE cliente SET nascimento = '1993-01-25' WHERE id = 10;
