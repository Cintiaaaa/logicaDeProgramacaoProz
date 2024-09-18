CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nome_usuario VARCHAR(16) NOT NULL,
  email_usuario VARCHAR(24) UNIQUE NOT NULL,
  senha_usuario VARCHAR(16) NOT NULL
);


INSERT INTO usuario (nome_usuario, email_usuario, senha_usuario) VALUES
  ('dominique', 'dominique@gmail.com','123');
  

CREATE TABLE perfil (
  id_perfil SERIAL PRIMARY KEY,
  nome_perfil VARCHAR(16) NOT NULL,
  descricao_perfil VARCHAR(180) NOT NULL
  );


INSERT INTO perfil (nome_perfil, descricao_perfil) VALUES
  ('John', 'Sou uma pessoa com espírito jovem, que valoriza boas conversas, risadas sinceras e conexões genuínas.'),
  ('Marcos', 'Amo viajar, cozinhar e desfrutar de momentos simples como um pôr-do-sol ou uma caminhada ao ar livre.'),
  ('Corlys', 'Estou em busca de alguém para compartilhar essa fase da vida e construir novas memórias juntos.');
 


CREATE TABLE carrossel (
  id_carrossel SERIAL PRIMARY KEY,
  data_exibicao VARCHAR(16) NOT NULL,
  id_perfil INT NOT NULL,
  id_usuario INT NOT NULL,
  CONSTRAINT id_perfil FOREIGN KEY (id_perfil) REFERENCES perfil(id_perfil),
  CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);


INSERT INTO carrossel (data_exibicao, id_perfil, id_usuario) VALUES
  ('21/12/2003', 1, 1),
  ('13/09/2015', 2, 1),
  ('01/01/2014', 3, 1);
  


CREATE TABLE avaliacao (
  id_avaliacao SERIAL PRIMARY KEY,
  tipo_avaliacao VARCHAR(16) NOT NULL,
  id_usuario INT NOT NULL,
  id_perfil INT NOT NULL,
  CONSTRAINT id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  CONSTRAINT id_perfil FOREIGN KEY (id_perfil) REFERENCES perfil(id_perfil)
);

-- Inserção de avaliações de like feitas por Dominique 
INSERT INTO avaliacao (tipo_avaliacao, id_usuario, id_perfil)
VALUES 
  ('like', 1, 1),  
  ('like', 1, 2),  
  ('like', 1, 3);  

-- Consultas
SELECT * FROM usuario;

SELECT * FROM perfil;

SELECT * FROM carrossel;

SELECT * FROM avaliacao;

SELECT p.nome_perfil
FROM perfil p
JOIN avaliacao a ON p.id_perfil = a.id_perfil
WHERE a.id_usuario = 1 AND a.tipo_avaliacao = 'like';

