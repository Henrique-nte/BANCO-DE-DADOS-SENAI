CREATE TABLE Filme (
  id_filme INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  genero VARCHAR(50),
  duracao INT,
  classificacao VARCHAR(20)
);

CREATE TABLE Sala (
  id_sala INT PRIMARY KEY AUTO_INCREMENT,
  numero INT UNIQUE NOT NULL,
  capacidade INT NOT NULL,
  tipo ENUM('2D', '3D', 'IMAX') NOT NULL
);

CREATE TABLE Sessao (
  id_sessao INT PRIMARY KEY AUTO_INCREMENT,
  id_filme INT NOT NULL,
  id_sala INT NOT NULL,
  data_hora DATETIME NOT NULL,
  preco DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (id_filme) REFERENCES Filme(id_filme),
  FOREIGN KEY (id_sala) REFERENCES Sala(id_sala)
);

CREATE TABLE Cliente (
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cpf CHAR(11) UNIQUE,
  telefone VARCHAR(20)
);

CREATE TABLE Venda (
  id_venda INT PRIMARY KEY AUTO_INCREMENT,
  id_sessao INT NOT NULL,
  id_cliente INT NOT NULL,
  assento VARCHAR(10) NOT NULL,
  data_venda DATETIME NOT NULL,
  FOREIGN KEY (id_sessao) REFERENCES Sessao(id_sessao),
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  UNIQUE (id_sessao, assento) -- evita assento duplicado
);