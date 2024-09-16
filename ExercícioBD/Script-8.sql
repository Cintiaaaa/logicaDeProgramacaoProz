CREATE DATABASE ESCOLA;


CREATE TABLE ALUNO (
    aluno_id SERIAL  PRIMARY KEY,  
    nome VARCHAR(100),                  
    email VARCHAR(100),                
    endereco VARCHAR(255)               
);

INSERT INTO ALUNO (nome, email, endereco)
VALUES 
('Maria Eduarda', 'madu@gmail.com', 'Avenida C, 456, Bairro D'),
('Carla Souza', 'carla.souza@gmail.com', 'Rua E, 789, Bairro F'),
('Ana Rita', 'ana.rita@gmail.com', 'Travessa G, 321, Bairro H');