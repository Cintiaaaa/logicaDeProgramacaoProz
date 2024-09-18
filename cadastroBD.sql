CREATE TABLE usuario (
  usuario_id SERIAL PRIMARY KEY,
  nome VARCHAR(16) NOT NULL,
  sobrenome VARCHAR(20) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  celular BIGINT UNIQUE NOT NULL,
  idade INT NOT NULL,
  estado_civil VARCHAR(20) NOT NULL,
  genero VARCHAR(20) NOT NULL,
  raca VARCHAR(11) NOT NULL,
  orientacao_sexual VARCHAR(20) NOT NULL,
  biografia VARCHAR(200) NOT NULL
  );


INSERT INTO usuario (nome, sobrenome, email, celular, idade, estado_civil, genero, raca, orientacao_sexual, biografia) VALUES
  ('John', 'Lennon','johnlennon@gmail.com', '24999516786', '54', 'Solteiro', 'Homem cisgênero', 'caucasiano', 'Héterossexual', 'Sou uma pessoa com espírito jovem, que valoriza boas conversas, risadas sinceras e conexões genuínas.'),
  ('Marcos', 'Lothbrook','marcoslothbrook@gmail.com', '24999526787', '60', 'Solteiro', 'Homem cisgênero', 'caucasiano', 'Héterossexual', 'Amo viajar, cozinhar e desfrutar de momentos simples como um pôr-do-sol ou uma caminhada ao ar livre.'),
  ('Corlys', 'Velaryon','corlysvelaryon@gmail.com', '24993516785', '65', 'Solteiro', 'Homem cisgênero', 'caucasiano', 'Bissexual', 'Estou em busca de alguém para compartilhar essa fase da vida e construir novas memórias juntos.');
  
  CREATE TABLE interesse (
  interesse_id SERIAL PRIMARY KEY,
  tipo_interesse VARCHAR(30) NOT NULL
);

INSERT INTO interesse (tipo_interesse) VALUES
  ('Namoro'),
  ('Amizade'),
  ('Casamento'),
  ('Relacionamento sério');

CREATE TABLE usuario_interesse (
  usuario_id INT,
  interesse_id INT,
  CONSTRAINT usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  CONSTRAINT interesse_id FOREIGN KEY (interesse_id) REFERENCES interesse(interesse_id)
  );


INSERT INTO usuario_interesse (usuario_id, interesse_id) VALUES
  ('1', '1'),
  ('2', '4'),
  ('3', '2');
 


CREATE TABLE hobbie (
  hobbie_id SERIAL PRIMARY KEY,
  tipo_hobbie VARCHAR(20) NOT NULL
  );


INSERT INTO hobbie (tipo_hobbie) VALUES
  ('Música'),
  ('Cinema'),
  ('Política'),
  ('Arte'),
  ('Viagem'),
  ('Moda'),
  ('Esporte'),
  ('Economia'),
  ('Tecnologia'),
  ('Livros'),
  ('Gastronomia'),
  ('Religião');
  


CREATE TABLE usuario_hobbie (
  usuario_id INT NOT NULL,
  hobbie_id INT NOT NULL,
  CONSTRAINT usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  CONSTRAINT hobbie_id FOREIGN KEY (hobbie_id) REFERENCES hobbie(hobbie_id)
);

INSERT INTO usuario_hobbie (usuario_id, hobbie_id) VALUES
  ('1', '1'),
  ('1', '2'),
  ('1', '11'),
  ('2', '1'),
  ('2', '4'),
  ('2', '10'),
  ('3', '5'),
  ('3', '9'),
  ('3', '10');
  
CREATE TABLE privacidade (
  privacidade_id SERIAL PRIMARY KEY,
  nivel_privacidade VARCHAR(50) NOT NULL
  );
  
 
  INSERT INTO privacidade (nivel_privacidade) VALUES
  ('Só quem faz parte da minha rede'),
  ('Pessoas fora da minha rede'),
  ('Quem tiver interesse');
  
  
CREATE TABLE usuario_privacidade (
  usuario_id INT NOT NULL,
  privacidade_id INT NOT NULL,
  CONSTRAINT usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  CONSTRAINT privacidade_id FOREIGN KEY (privacidade_id) REFERENCES privacidade(privacidade_id)
);

INSERT INTO usuario_privacidade (usuario_id, privacidade_id) VALUES
  ('1', '3'),
  ('2', '1'),
  ('3', '3');
  
  
  
  
  
SELECT * from usuario


SELECT * from interesse


select * from usuario_interesse


select * from hobbie


SELECT * from usuario_hobbie


SELECT * from privacidade


select * from usuario_privacidade


SELECT u.nome, u.sobrenome, i.tipo_interesse
FROM usuario u
INNER JOIN usuario_interesse ui ON u.usuario_id = ui.usuario_id
INNER JOIN interesse i ON ui.interesse_id = i.interesse_id



SELECT u.nome, u.sobrenome, h.tipo_hobbie
FROM usuario u
INNER JOIN usuario_hobbie uh ON u.usuario_id = uh.usuario_id
INNER JOIN hobbie h ON uh.hobbie_id = h.hobbie_id
WHERE h.tipo_hobbie IN ('Música');

