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

INSERT INTO tb_Classificacao (idade, descricao) VALUES ('2000-01-01', 'Adulto');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('2005-06-17', 'Jovem');
INSERT INTO tb_Classificacao (idade, descricao) VALUES ('1995-12-31', 'Idoso');

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