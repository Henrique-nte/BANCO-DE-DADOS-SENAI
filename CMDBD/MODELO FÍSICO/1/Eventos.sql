/*Contexto:
Campos sugeridos:
Regras de negócio:
*/
 
 CREATE DATABASE DB;
 
 USE DB;
 -- Eventos: nome, local, data, capacidade, valor ingresso.
 CREATE TABLE EVENTOS(
	ID_EVENTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME_EVENTO VARCHAR(100),
    LOCAL_EVENTO VARCHAR(100),
    DATA_EVENTO DATE,
    CAPACIDADE INT,
    VALOR_INGRESSO DECIMAL(10, 2)
    
    -- Capacidade máxima do evento não pode ser ultrapassada. -- 
    CONSTRAINT CAP_MIN CHECK (CAPACIDADE >= 1000)
 );
 
-- Participantes: nome, CPF, e-mail, telefone. 

CREATE TABLE PARTICIPANTES(
	ID_PARTICIPANTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME_PARTICIPANTE VARCHAR(100),
    CPF INT(10),
    EMAIL VARCHAR(100),
    TELEFONE VARCHAR(15)
    
);

-- Ingressos: evento, participante, assento, valor pago.

CREATE TABLE INGRESSOS(
	EVENTO INT,
    PARTICIPANTE INT,
    ASSENTO INT,
    VALOR_PAGO DECIMAL(10, 2),
	-- CHAVES ESTRANGEIRAS --
    -- Todo ingresso deve estar vinculado a um evento. --
	FOREIGN KEY (EVENTO) REFERENCES EVENTOS(ID_EVENTO),
	FOREIGN KEY (PARTICIPANTE) REFERENCES PARTICIPANTES(ID_PARTICIPANTE),
    -- Um participante pode comprar vários ingressos, mas para o mesmo evento apenas 1 assento. --
    CONSTRAINT UNQ_PART_EVENTO UNIQUE (PARTICIPANTE, EVENTO)
);

-- Organizadores: nome, CPF, e-mail, função.

CREATE TABLE ORGANIZADORES(
	NOME VARCHAR(100),
    CPF INT(10),
    EMAIL VARCHAR(100),
    FUNCAO VARCHAR(100)
);

