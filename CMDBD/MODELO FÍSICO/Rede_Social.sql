CREATE TABLE Usuario (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE NOT NULL,
  senha VARCHAR(255) NOT NULL,
  data_cadastro DATE
);

CREATE TABLE Postagem (
  id_postagem INT PRIMARY KEY AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  conteudo TEXT,
  data_hora DATETIME,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Curtida (
  id_usuario INT,
  id_postagem INT,
  data_hora DATETIME,
  PRIMARY KEY (id_usuario, id_postagem),
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_postagem) REFERENCES Postagem(id_postagem)
);

CREATE TABLE Comentario (
  id_comentario INT PRIMARY KEY AUTO_INCREMENT,
  id_postagem INT NOT NULL,
  id_usuario INT NOT NULL,
  conteudo TEXT,
  data_hora DATETIME,
  FOREIGN KEY (id_postagem) REFERENCES Postagem(id_postagem),
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Amizade (
  id_usuario1 INT,
  id_usuario2 INT,
  data_inicio DATE,
  PRIMARY KEY (id_usuario1, id_usuario2),
  FOREIGN KEY (id_usuario1) REFERENCES Usuario(id_usuario),
  FOREIGN KEY (id_usuario2) REFERENCES Usuario(id_usuario),
  CHECK (id_usuario1 <> id_usuario2) -- impede autoamizade
);