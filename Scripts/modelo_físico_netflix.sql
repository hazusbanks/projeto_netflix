
            
CREATE DATABASE IF NOT EXISTS db_netflix
COLLATE utf8mb4_general_ci 
charset utf8mb4;
use db_netflix;

CREATE TABLE IF NOT EXISTS tb_Pais (
id_pais INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
codigo CHAR(2) NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Plano (
id_plano INT PRIMARY KEY AUTO_INCREMENT,
valor INTEGER NOT NULL,
descricao VARCHAR(100)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Pagamento (
id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
forma_pagamento VARCHAR(100)NOT NULL,
valor INTEGER NOT NULL,
dt_pagamento DATE NOT NULL,
id_cartao INTEGER NOT NULL,
id_cliente INTEGER NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Tipo_pagamento (
id_pagamento INT PRIMARY KEY,
nome VARCHAR(100) UNIQUE NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Cartao_credito (
id_cartao INT PRIMARY KEY AUTO_INCREMENT,
numero VARCHAR(255) NOT NULL,
dt_vencimento DATE NOT NULL,
cod_seguranca INTEGER NOT NULL,
titular VARCHAR(100)NOT NULL,
nome CHAR(20) UNIQUE NOT NULL)
AUTO_INCREMENT = 1;

drop table tb_cartao_credito;

CREATE TABLE IF NOT EXISTS tb_Classificacao (
id_classificacao INT PRIMARY KEY AUTO_INCREMENT,
idade DATE NOT NULL,
descricao VARCHAR(10)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Categoria (
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_catalogo_idioma (
id_catalogo INT NOT NULL,
id_idioma INT NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Ator (
id_ator INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255)NOT NULL,
sobrenome VARCHAR(100)NOT NULL,
dt_nascimento DATE NOT NULL,
foto VARCHAR(255)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Endereco (
id_pais INT PRIMARY KEY AUTO_INCREMENT,
id_usuario INT NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Usuario (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
senha VARCHAR(100) NOT NULL,
data DATE NOT NULL,
nome VARCHAR(100)NOT NULL,
sobrenome VARCHAR(100)NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
dt_cadastro DATE NOT NULL,
dt_nascimento DATE NOT NULL,
status VARCHAR(100)NOT NULL,
id_cliente INTEGER NOT NULL,
id_funcionario INTEGER NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_funcionario (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nivel_acesso INTEGER NOT NULL,
foto VARCHAR(255)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
id_perfil INT NOT NULL,
id_cartao INT NOT NULL,
dt_venc_plano DATE NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_idioma (
id_idioma INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_filme (
id_filme INT PRIMARY KEY AUTO_INCREMENT,
oscar VARCHAR(100)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_episodio (
id_episodio INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100)NOT NULL,
duracao TIME NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_serie (
id_serie INT PRIMARY KEY AUTO_INCREMENT,
qtd_episodios INTEGER NOT NULL)
AUTO_INCREMENT = 1;



CREATE TABLE IF NOT EXISTS tb_catalogo (
    id_catalogo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    imagem_capa BIT,
    idioma_original VARCHAR(100) NOT NULL,
    duracao TIME NOT NULL,
    ano_lancamento DATE NOT NULL,
    pais_origem VARCHAR(100) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    avaliacao INT NOT NULL,
    idioma_disponivel VARCHAR(100) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    qtd_episodio INT NOT NULL,
    oscar VARCHAR(100) NOT NULL,
    id_classificacao INTEGER NOT NULL,
    id_idioma INT NOT NULL,
    id_filme INT NOT NULL,
    id_episodio INT NOT NULL,
    id_serie INT NOT NULL,
    id_ator INT NOT NULL,
    CONSTRAINT fk_id_classificacao FOREIGN KEY (id_classificacao) REFERENCES tb_classificacao(id_classificacao),
    CONSTRAINT fk_id_idioma FOREIGN KEY (id_idioma) REFERENCES tb_idioma (id_idioma),
    CONSTRAINT fk_id_id_filme FOREIGN KEY (id_filme) REFERENCES tb_filme (id_filme),
    CONSTRAINT fk_id_episodio FOREIGN KEY (id_episodio) REFERENCES tb_episodio (id_episodio),
    CONSTRAINT fk_id_serie FOREIGN KEY (id_serie) REFERENCES tb_serie (id_serie),
    CONSTRAINT fk_id_ator FOREIGN KEY (id_ator) REFERENCES tb_ator (id_ator)
) AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_pais_catalogo (
id_catalogo INTEGER PRIMARY KEY AUTO_INCREMENT,
id_pais INT NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_catalogo_categoria (
id_catalogo INTEGER NOT NULL,
id_categoria INTEGER NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_Temporada (
id_temporada INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(100)NOT NULL,
descricao VARCHAR(100)NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_serie_temporada (
id_temporada INT NOT NULL,
id_serie INT NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_temporada_episodio (
id_temporada INTEGER NOT NULL,
id_episodio INTEGER NOT NULL,
quant_episodio INTEGER NOT NULL)
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_contrata (
id_vencimento INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INTEGER NOT NULL,
id_plano INTEGER NOT NULL)
AUTO_INCREMENT = 1;

-- inserts --

INSERT INTO tb_Pais (nome, codigo) VALUES ('Brasil', 'BR');
INSERT INTO tb_Pais (nome, codigo) VALUES ('Estados Unidos', 'US');
INSERT INTO tb_Pais (nome, codigo) VALUES ('Reino Unido', 'UK');
INSERT INTO tb_Pais (nome, codigo) VALUES ('França', 'FR');
INSERT INTO tb_Pais (nome, codigo) VALUES ('Canadá', 'CA');

INSERT INTO tb_Plano (valor, descricao) VALUES (19.99, 'Plano Básico');
INSERT INTO tb_Plano (valor, descricao) VALUES (29.99, 'Plano Padrão');
INSERT INTO tb_Plano (valor, descricao) VALUES (39.99, 'Plano Premium');
INSERT INTO tb_Plano (valor, descricao) VALUES (9.99, 'Plano Mobile');
INSERT INTO tb_Plano (valor, descricao) VALUES (49.99, 'Plano Familiar');

INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES ('Cartão de Crédito', 29.99, '2023-06-01', 1234567890, 1);
INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES ('PayPal', 19.99, '2023-06-02', 9876543210, 2);
INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES ('Boleto Bancário', 39.99, '2023-06-03', 1357924680, 3);
INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES ('Transferência Bancária', 9.99, '2023-06-04', 2468135790, 4);
INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente) VALUES ('Cartão de Débito', 49.99, '2023-06-05', 5678901234, 5);

INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (1, 'Crédito');
INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (2, 'Débito');
INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (3, 'Transferência');
INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (4, 'Boleto');
INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (5, 'PayPal');

INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome) VALUES ('1234567890123456', '2024-12-31', 123, 'Fulano de Tal', 'Cartão 1');
INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome) VALUES ('9876543210987654', '2025-12-31', 456, 'Beltrano de Tal', 'Cartão 2');
INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome) VALUES ('2468135790246813', '2026-12-31', 789, 'Ciclano de Tal', 'Cartão 3');
INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome) VALUES ('1357924680135792', '2027-12-31', 321, 'Fulana de Tal', 'Cartão 4');
INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome) VALUES ('5678901234567890', '2028-12-31', 654, 'Beltrana de Tal', 'Cartão 5');

INSERT INTO tb_Classificacao (idade, descricao) VALUES ('Livre', 'L');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('10 anos', '10');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('12 anos', '12');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('14 anos', '14');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('16 anos', '16');

INSERT INTO tb_Categoria (nome) VALUES ('Ação');
INSERT INTO tb_Categoria (nome) VALUES ('Comédia');
INSERT INTO tb_Categoria (nome) VALUES ('Drama');
INSERT INTO tb_Categoria (nome) VALUES ('Ficção Científica');
INSERT INTO tb_Categoria (nome) VALUES ('Romance');

INSERT INTO tb_idioma (nome) VALUES ('Inglês');
INSERT INTO tb_idioma (nome) VALUES ('Português');
INSERT INTO tb_idioma (nome) VALUES ('Espanhol');
INSERT INTO tb_idioma (nome) VALUES ('Francês');
INSERT INTO tb_idioma (nome) VALUES ('Alemão');

INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES ('Tom', 'Hanks', '1956-07-09', 'tom_hanks.jpg');
INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES ('Jennifer', 'Lawrence', '1990-08-15', 'jennifer_lawrence.jpg');
INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES ('Leonardo', 'DiCaprio', '1974-11-11', 'leonardo_dicaprio.jpg');
INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES ('Scarlett', 'Johansson', '1984-11-22', 'scarlett_johansson.jpg');
INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES ('Chris', 'Evans', '1981-06-13', 'chris_evans.jpg');

INSERT INTO tb_Usuario (senha, data, nome, sobrenome, email, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES ('123456', '2023-06-01', 'João', 'Silva', 'joao.silva@example.com', '2023-06-01', '1990-01-15', 'Ativo', 1, 1);
INSERT INTO tb_Usuario (senha, data, nome, sobrenome, email, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES ('abcdef', '2023-06-02', 'Maria', 'Santos', 'maria.santos@example.com', '2023-06-02', '1985-05-20', 'Ativo', 2, 2);
INSERT INTO tb_Usuario (senha, data, nome, sobrenome, email, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES ('qwerty', '2023-06-03', 'Pedro', 'Costa', 'pedro.costa@example.com', '2023-06-03', '1995-10-10', 'Ativo', 3, 3);
INSERT INTO tb_Usuario (senha, data, nome, sobrenome, email, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES ('abc123', '2023-06-04', 'Ana', 'Silveira', 'ana.silveira@example.com', '2023-06-04', '1992-03-25', 'Ativo', 4, 4);
INSERT INTO tb_Usuario (senha, data, nome, sobrenome, email, dt_cadastro, dt_nascimento, status, id_cliente, id_funcionario) VALUES ('xyz987', '2023-06-05', 'Lucas', 'Martins', 'lucas.martins@example.com', '2023-06-05', '1988-09-05', 'Ativo', 5, 5);

INSERT INTO tb_filme (oscar) VALUES ('Vencedor do Oscar 1');
INSERT INTO tb_filme (oscar) VALUES ('Vencedor do Oscar 2');
INSERT INTO tb_filme (oscar) VALUES ('Vencedor do Oscar 3');
INSERT INTO tb_filme (oscar) VALUES ('Vencedor do Oscar 4');
INSERT INTO tb_filme (oscar) VALUES ('Vencedor do Oscar 5');

INSERT INTO tb_episodio (nome, duracao) VALUES ('Episódio 1', '00:30:00');
INSERT INTO tb_episodio (nome, duracao) VALUES ('Episódio 2', '00:35:00');
INSERT INTO tb_episodio (nome, duracao) VALUES ('Episódio 3', '00:40:00');
INSERT INTO tb_episodio (nome, duracao) VALUES ('Episódio 4', '00:25:00');
INSERT INTO tb_episodio (nome, duracao) VALUES ('Episódio 5', '00:30:00');

INSERT INTO tb_serie (qtd_episodios) VALUES (10);
INSERT INTO tb_serie (qtd_episodios) VALUES (12);
INSERT INTO tb_serie (qtd_episodios) VALUES (8);
INSERT INTO tb_serie (qtd_episodios) VALUES (15);
INSERT INTO tb_serie (qtd_episodios) VALUES (20);

INSERT INTO tb_Temporada (titulo, descricao) VALUES ('Temporada 1', 'Descrição da temporada 1');
INSERT INTO tb_Temporada (titulo, descricao) VALUES ('Temporada 2', 'Descrição da temporada 2');
INSERT INTO tb_Temporada (titulo, descricao) VALUES ('Temporada 3', 'Descrição da temporada 3');
INSERT INTO tb_Temporada (titulo, descricao) VALUES ('Temporada 4', 'Descrição da temporada 4');
INSERT INTO tb_Temporada (titulo, descricao) VALUES ('Temporada 5', 'Descrição da temporada 5');

INSERT INTO tb_catalogo_categoria (id_catalogo, id_categoria) VALUES (1, 1);
INSERT INTO tb_catalogo_categoria (id_catalogo, id_categoria) VALUES (1, 2);
INSERT INTO tb_catalogo_categoria (id_catalogo, id_categoria) VALUES (2, 2);
INSERT INTO tb_catalogo_categoria (id_catalogo, id_categoria) VALUES (2, 3);
INSERT INTO tb_catalogo_categoria (id_catalogo, id_categoria) VALUES (3, 1);

INSERT INTO tb_serie_temporada (id_temporada, id_serie) VALUES (1, 1);
INSERT INTO tb_serie_temporada (id_temporada, id_serie) VALUES (2, 1);
INSERT INTO tb_serie_temporada (id_temporada, id_serie) VALUES (3, 2);
INSERT INTO tb_serie_temporada (id_temporada, id_serie) VALUES (4, 2);
INSERT INTO tb_serie_temporada (id_temporada, id_serie) VALUES (5, 3);

INSERT INTO tb_temporada_episodio (id_temporada, id_episodio, quant_episodio) VALUES (1, 1, 10);
INSERT INTO tb_temporada_episodio (id_temporada, id_episodio, quant_episodio) VALUES (1, 2, 10);
INSERT INTO tb_temporada_episodio (id_temporada, id_episodio, quant_episodio) VALUES (2, 3, 12);
INSERT INTO tb_temporada_episodio (id_temporada, id_episodio, quant_episodio) VALUES (2, 4, 12);
INSERT INTO tb_temporada_episodio (id_temporada, id_episodio, quant_episodio) VALUES (3, 5, 8);

INSERT INTO tb_pais_catalogo (id_catalogo, id_pais) VALUES (1, 1);
INSERT INTO tb_pais_catalogo (id_catalogo, id_pais) VALUES (1, 2);
INSERT INTO tb_pais_catalogo (id_catalogo, id_pais) VALUES (2, 1);
INSERT INTO tb_pais_catalogo (id_catalogo, id_pais) VALUES (2, 3);
INSERT INTO tb_pais_catalogo (id_catalogo, id_pais) VALUES (3, 2);

INSERT INTO tb_contrata (id_cliente, id_plano) VALUES (1, 1);
INSERT INTO tb_contrata (id_cliente, id_plano) VALUES (2, 2);
INSERT INTO tb_contrata (id_cliente, id_plano) VALUES (3, 3);
INSERT INTO tb_contrata (id_cliente, id_plano) VALUES (4, 2);
INSERT INTO tb_contrata (id_cliente, id_plano) VALUES (5, 1);

INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (1, 1);
INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (1, 2);
INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (2, 1);
INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (3, 3);
INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (4, 2);

INSERT INTO tb_endereco (id_pais, id_usuario) VALUES (1, 1);
INSERT INTO tb_endereco (id_pais, id_usuario) VALUES (2, 2);
INSERT INTO tb_endereco (id_pais, id_usuario) VALUES (3, 3);
INSERT INTO tb_endereco (id_pais, id_usuario) VALUES (1, 4);
INSERT INTO tb_endereco (id_pais, id_usuario) VALUES (2, 5);

INSERT INTO tb_cliente (id_perfil, id_cartao, dt_venc_plano) VALUES (1, 1, '2023-06-10');
INSERT INTO tb_cliente (id_perfil, id_cartao, dt_venc_plano) VALUES (2, 2, '2023-06-15');
INSERT INTO tb_cliente (id_perfil, id_cartao, dt_venc_plano) VALUES (3, 3, '2023-06-20');
INSERT INTO tb_cliente (id_perfil, id_cartao, dt_venc_plano) VALUES (4, 4, '2023-06-12');
INSERT INTO tb_cliente (id_perfil, id_cartao, dt_venc_plano) VALUES (5, 5, '2023-06-18');

INSERT INTO tb_funcionario (nivel_acesso, foto) VALUES (1, 'foto1.jpg');
INSERT INTO tb_funcionario (nivel_acesso, foto) VALUES (2, 'foto2.jpg');
INSERT INTO tb_funcionario (nivel_acesso, foto) VALUES (3, 'foto3.jpg');
INSERT INTO tb_funcionario (nivel_acesso, foto) VALUES (1, 'foto4.jpg');
INSERT INTO tb_funcionario (nivel_acesso, foto) VALUES (2, 'foto5.jpg');

INSERT INTO tb_idioma (nome) VALUES ('Inglês');
INSERT INTO tb_idioma (nome) VALUES ('Espanhol');
INSERT INTO tb_idioma (nome) VALUES ('Francês');
INSERT INTO tb_idioma (nome) VALUES ('Alemão');
INSERT INTO tb_idioma (nome) VALUES ('Italiano');

select * from tb_ator;


