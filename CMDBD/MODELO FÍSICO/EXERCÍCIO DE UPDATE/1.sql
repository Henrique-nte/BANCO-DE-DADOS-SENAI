CREATE DATABASE atividade11A;
USE atividade11A;


CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    sexo ENUM('M','F') NOT NULL
);


INSERT INTO cliente (nome, sobrenome, cpf, sexo) VALUES
('Rosa','Azevedo','88766934410','F'),
('Cintia','Silva','36490291073','F'),
('Conrado','Martins','26165924432','M'),
('Roberto','Nunes','10534277203','M'),
('Tiago','Rocha','63145054180','M'),
('João','Linhares','18294062193','M'),
('Lurdes','Albuquerque','87776772354','F'),
('Sara','Souza','63798337099','F'),
('Larissa','Nunes','73777022327','F'),
('Maurício','Machado','34933861580','M');


UPDATE cliente
SET nome='Katia', sobrenome='Chavez', cpf='95427351301', sexo='F'
WHERE id=5;

UPDATE cliente
SET nome='Paloma', sobrenome='Nunes', cpf='95427334567', sexo='F'
WHERE id=10;


ALTER TABLE cliente
ADD COLUMN telefone VARCHAR(15) AFTER sexo;

UPDATE cliente SET telefone='9991-1111' WHERE id=1;
UPDATE cliente SET telefone='9992-2222' WHERE id=2;
UPDATE cliente SET telefone='9993-3333' WHERE id=3;
UPDATE cliente SET telefone='9994-4444' WHERE id=4;
UPDATE cliente SET telefone='9995-5555' WHERE id=5;
UPDATE cliente SET telefone='9996-6666' WHERE id=6;
UPDATE cliente SET telefone='9997-7777' WHERE id=7;
UPDATE cliente SET telefone='9998-8888' WHERE id=8;
UPDATE cliente SET telefone='9999-9999' WHERE id=9;
UPDATE cliente SET telefone='9990-0000' WHERE id=10;
