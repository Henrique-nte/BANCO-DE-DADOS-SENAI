/*Sistema de Restaurante
Regras de negócio:
Uma mesa pode ter apenas um pedido ativo por vez.
Pedido pode conter vários pratos.
Não permitir preço negativo.
 */
CREATE DATABASE res_db;
USE res_db;

/*Clientes: nome, telefone, e-mail.*/
CREATE TABLE CLIENTES(
	ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(100),
    TELEFONE VARCHAR(100),
    EMAIL VARCHAR(50)
);

/*Mesas: número, capacidade, status (livre, ocupada).*/
CREATE TABLE MESAS (
    ID_MESA INT PRIMARY KEY AUTO_INCREMENT,
    NUMERO_MESA INT(4) NOT NULL,
    CAPACIDADE INT NOT NULL,
    STATUS_MESA ENUM('Livre', 'Ocupada') NOT NULL DEFAULT 'Livre'
);

/*Cardápio: prato, descrição, preço, categoria (entrada, prato principal, sobremesa, bebida).*/
CREATE TABLE CARDAPIO(
	ID_CARDAPIO INT PRIMARY KEY AUTO_INCREMENT,
	PRATO VARCHAR(50),
    DESCRICAO VARCHAR(100),
    PRECO FLOAT(20),
	CATEGORIA ENUM("Entrada", "Prato principal", "Sobremesa", "Bebida"),
    /*Não permitir preço negativo.*/
    CONSTRAINT chk_preco_unitario_positivo CHECK (PRECO >= 0)
);
/*Pedidos: número, mesa, cliente (opcional), data, status.*/

CREATE TABLE PEDIDOS(
	NUMERO_PEDIDO INT PRIMARY KEY AUTO_INCREMENT,
    ID_MESA INT,
	ID_CLIENTE INT,
    DATA_PEDIDO DATETIME,
    STATUS_PEDIDO ENUM('Pendente', 'Confirmado', 'Preparando', 'Pronto', 'Em_entrega', 'Entregue', 'Cancelado', 'Devolvido') NOT NULL DEFAULT 'Pendente',
	FOREIGN KEY (ID_MESA) REFERENCES MESAS(ID_MESA),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE)
);

/*Uma mesa pode ter apenas um pedido ativo por vez.*/

/*ItensPedido: pedido, prato, quantidade, preço unitário.*/
/*Pedido pode conter vários pratos.*/

CREATE TABLE ITENS_PEDIDO(
	ID_ITEM INT PRIMARY KEY AUTO_INCREMENT,
	PEDIDO INT,
    ID_CARDAPIO INT,
    QUANTIDADE INT,
    PRECO_UNITARIO DECIMAL(10, 2),
    FOREIGN KEY (PEDIDO) REFERENCES PEDIDOS(NUMERO_PEDIDO),
    FOREIGN KEY (ID_CARDAPIO) REFERENCES CARDAPIO(ID_CARDAPIO),
    /*Não permitir preço negativo.*/
    CONSTRAINT CHK_PRECO_UNITARIO CHECK (PRECO_UNITARIO >=0)
);

/*Pagamentos: pedido, valor total, forma pagamento, data.*/
CREATE TABLE PAGAMENTOS(
	PEDIDO INT PRIMARY KEY AUTO_INCREMENT,
    VALOR_TOTAL DECIMAL(10, 2),
    FORMA_PAGAMENTO ENUM("PIX", "CARTAO_DEBITO", "CARTAO_CREDITO", "DINHEIRO") NOT NULL DEFAULT "DINHEIRO",
    FOREIGN KEY (PEDIDO) REFERENCES PEDIDOS(NUMERO_PEDIDO)
);