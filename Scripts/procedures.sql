-- procedure de insert tb_pais--

DELIMITER //
CREATE PROCEDURE sp_InserirPais(
    IN pais_nome VARCHAR(100),
    IN pais_codigo CHAR(2)
)
BEGIN
    INSERT INTO tb_Pais (nome, codigo)
    VALUES (pais_nome, pais_codigo);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Pais
DELIMITER //
CREATE PROCEDURE UpdatePais(
    IN p_id INT,
    IN p_nome VARCHAR(100),
    IN p_codigo CHAR(2)
)
BEGIN
    UPDATE tb_Pais
    SET nome = p_nome, codigo = p_codigo
    WHERE id_pais = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Pais
DELIMITER //
CREATE PROCEDURE DeletePais(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Pais WHERE id_pais = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Plano
DELIMITER //
CREATE PROCEDURE InsertPlano(
    IN p_valor INTEGER,
    IN p_descricao VARCHAR(100)
)
BEGIN
    INSERT INTO tb_Plano (valor, descricao) VALUES (p_valor, p_descricao);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Plano
DELIMITER //
CREATE PROCEDURE UpdatePlano(
    IN p_id INT,
    IN p_valor INTEGER,
    IN p_descricao VARCHAR(100)
)
BEGIN
    UPDATE tb_Plano
    SET valor = p_valor, descricao = p_descricao
    WHERE id_plano = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Plano
DELIMITER //
CREATE PROCEDURE DeletePlano(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Plano WHERE id_plano = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Pagamento
DELIMITER //
CREATE PROCEDURE InsertPagamento(
    IN p_forma_pagamento VARCHAR(100),
    IN p_valor INTEGER,
    IN p_dt_pagamento DATE,
    IN p_id_cartao INTEGER,
    IN p_id_cliente INTEGER
)
BEGIN
    INSERT INTO tb_Pagamento (forma_pagamento, valor, dt_pagamento, id_cartao, id_cliente)
    VALUES (p_forma_pagamento, p_valor, p_dt_pagamento, p_id_cartao, p_id_cliente);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Pagamento
DELIMITER //
CREATE PROCEDURE UpdatePagamento(
    IN p_id INT,
    IN p_forma_pagamento VARCHAR(100),
    IN p_valor INTEGER,
    IN p_dt_pagamento DATE,
    IN p_id_cartao INTEGER,
    IN p_id_cliente INTEGER
)
BEGIN
    UPDATE tb_Pagamento
    SET forma_pagamento = p_forma_pagamento, valor = p_valor, dt_pagamento = p_dt_pagamento,
    id_cartao = p_id_cartao, id_cliente = p_id_cliente
    WHERE id_pagamento = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Pagamento
DELIMITER //
CREATE PROCEDURE DeletePagamento(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Pagamento WHERE id_pagamento = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Tipo_pagamento
DELIMITER //
CREATE PROCEDURE InsertTipoPagamento(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    INSERT INTO tb_Tipo_pagamento (id_pagamento, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Tipo_pagamento
DELIMITER //
CREATE PROCEDURE UpdateTipoPagamento(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    UPDATE tb_Tipo_pagamento
    SET nome = p_nome
    WHERE id_pagamento = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Tipo_pagamento
DELIMITER //
CREATE PROCEDURE DeleteTipoPagamento(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Tipo_pagamento WHERE id_pagamento = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Cartao_credito
DELIMITER //
CREATE PROCEDURE InsertCartaoCredito(
    IN p_numero VARCHAR(255),
    IN p_dt_vencimento DATE,
    IN p_cod_seguranca INTEGER,
    IN p_titular VARCHAR(100),
    IN p_nome CHAR(20)
)
BEGIN
    INSERT INTO tb_Cartao_credito (numero, dt_vencimento, cod_seguranca, titular, nome)
    VALUES (p_numero, p_dt_vencimento, p_cod_seguranca, p_titular, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Cartao_credito
DELIMITER //
CREATE PROCEDURE UpdateCartaoCredito(
    IN p_id INT,
    IN p_numero VARCHAR(255),
    IN p_dt_vencimento DATE,
    IN p_cod_seguranca INTEGER,
    IN p_titular VARCHAR(100),
    IN p_nome CHAR(20)
)
BEGIN
    UPDATE tb_Cartao_credito
    SET numero = p_numero, dt_vencimento = p_dt_vencimento, cod_seguranca = p_cod_seguranca,
    titular = p_titular, nome = p_nome
    WHERE id_cartao = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Cartao_credito
DELIMITER //
CREATE PROCEDURE DeleteCartaoCredito(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Cartao_credito WHERE id_cartao = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Classificacao
DELIMITER //
CREATE PROCEDURE InsertClassificacao(
    IN p_id INT,
    IN p_idade DATE,
    IN p_descricao VARCHAR(10)
)
BEGIN
    INSERT INTO tb_Classificacao (id_classificacao, idade, descricao) VALUES (p_id, p_idade, p_descricao);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Classificacao
DELIMITER //
CREATE PROCEDURE UpdateClassificacao(
    IN p_id INT,
    IN p_idade DATE,
    IN p_descricao VARCHAR(10)
)
BEGIN
    UPDATE tb_Classificacao
    SET idade = p_idade, descricao = p_descricao
    WHERE id_classificacao = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Classificacao
DELIMITER //
CREATE PROCEDURE DeleteClassificacao(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Classificacao WHERE id_classificacao = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Categoria
DELIMITER //
CREATE PROCEDURE InsertCategoria(
    IN p_id INT,
    IN p_nome VARCHAR(255)
)
BEGIN
    INSERT INTO tb_Categoria (id_categoria, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Categoria
DELIMITER //
CREATE PROCEDURE UpdateCategoria(
    IN p_id INT,
    IN p_nome VARCHAR(255)
)
BEGIN
    UPDATE tb_Categoria
    SET nome = p_nome
    WHERE id_categoria = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Categoria
DELIMITER //
CREATE PROCEDURE DeleteCategoria(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Categoria WHERE id_categoria = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_catalogo_idioma
DELIMITER //
CREATE PROCEDURE InsertCatalogoIdioma(
    IN p_id_catalogo INT,
    IN p_id_idioma INT
)
BEGIN
    INSERT INTO tb_catalogo_idioma (id_catalogo, id_idioma) VALUES (p_id_catalogo, p_id_idioma);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_catalogo_idioma
DELIMITER //
CREATE PROCEDURE UpdateCatalogoIdioma(
    IN p_id_catalogo INT,
    IN p_id_idioma INT
)
BEGIN
    UPDATE tb_catalogo_idioma
    SET id_idioma = p_id_idioma
    WHERE id_catalogo = p_id_catalogo;
END //
DELIMITER ;

-- Procedure de DELETE para tb_catalogo_idioma
DELIMITER //
CREATE PROCEDURE DeleteCatalogoIdioma(
    IN p_id_catalogo INT
)
BEGIN
    DELETE FROM tb_catalogo_idioma WHERE id_catalogo = p_id_catalogo;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Ator
DELIMITER //
CREATE PROCEDURE InsertAtor(
    IN p_nome VARCHAR(255),
    IN p_sobrenome VARCHAR(100),
    IN p_dt_nascimento DATE,
    IN p_foto VARCHAR(255)
)
BEGIN
    INSERT INTO tb_Ator (nome, sobrenome, dt_nascimento, foto) VALUES (p_nome, p_sobrenome, p_dt_nascimento, p_foto);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Ator
DELIMITER //
CREATE PROCEDURE UpdateAtor(
    IN p_id INT,
    IN p_nome VARCHAR(255),
    IN p_sobrenome VARCHAR(100),
    IN p_dt_nascimento DATE,
    IN p_foto VARCHAR(255)
)
BEGIN
    UPDATE tb_Ator
    SET nome = p_nome, sobrenome = p_sobrenome, dt_nascimento = p_dt_nascimento, foto = p_foto
    WHERE id_ator = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Ator
DELIMITER //
CREATE PROCEDURE DeleteAtor(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Ator WHERE id_ator = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Endereco
DELIMITER //
CREATE PROCEDURE InsertEndereco(
    IN p_id_pais INT,
    IN p_id_usuario INT
)
BEGIN
    INSERT INTO tb_Endereco (id_pais, id_usuario) VALUES (p_id_pais, p_id_usuario);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Endereco
DELIMITER //
CREATE PROCEDURE UpdateEndereco(
    IN p_id INT,
    IN p_id_pais INT,
    IN p_id_usuario INT
)
BEGIN
    UPDATE tb_Endereco
    SET id_pais = p_id_pais, id_usuario = p_id_usuario
    WHERE id_endereco = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Endereco
DELIMITER //
CREATE PROCEDURE DeleteEndereco(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Endereco WHERE id_endereco = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Filme
DELIMITER //
CREATE PROCEDURE InsertFilme(
    IN p_titulo VARCHAR(255),
    IN p_diretor VARCHAR(100),
    IN p_duracao TIME,
    IN p_sinopse TEXT,
    IN p_id_classificacao INT
)
BEGIN
    INSERT INTO tb_Filme (titulo, diretor, duracao, sinopse, id_classificacao)
    VALUES (p_titulo, p_diretor, p_duracao, p_sinopse, p_id_classificacao);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Filme
DELIMITER //
CREATE PROCEDURE UpdateFilme(
    IN p_id INT,
    IN p_titulo VARCHAR(255),
    IN p_diretor VARCHAR(100),
    IN p_duracao TIME,
    IN p_sinopse TEXT,
    IN p_id_classificacao INT
)
BEGIN
    UPDATE tb_Filme
    SET titulo = p_titulo, diretor = p_diretor, duracao = p_duracao,
    sinopse = p_sinopse, id_classificacao = p_id_classificacao
    WHERE id_filme = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Filme
DELIMITER //
CREATE PROCEDURE DeleteFilme(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Filme WHERE id_filme = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Genero
DELIMITER //
CREATE PROCEDURE InsertGenero(
    IN p_id INT,
    IN p_nome VARCHAR(255)
)
BEGIN
    INSERT INTO tb_Genero (id_genero, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Genero
DELIMITER //
CREATE PROCEDURE UpdateGenero(
    IN p_id INT,
    IN p_nome VARCHAR(255)
)
BEGIN
    UPDATE tb_Genero
    SET nome = p_nome
    WHERE id_genero = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Genero
DELIMITER //
CREATE PROCEDURE DeleteGenero(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Genero WHERE id_genero = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Idioma
DELIMITER //
CREATE PROCEDURE InsertIdioma(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    INSERT INTO tb_Idioma (id_idioma, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Idioma
DELIMITER //
CREATE PROCEDURE UpdateIdioma(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    UPDATE tb_Idioma
    SET nome = p_nome
    WHERE id_idioma = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Idioma
DELIMITER //
CREATE PROCEDURE DeleteIdioma(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Idioma WHERE id_idioma = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Pais
DELIMITER //
CREATE PROCEDURE InsertPais(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    INSERT INTO tb_Pais (id_pais, nome) VALUES (p_id, p_nome);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Pais
DELIMITER //
CREATE PROCEDURE UpdatePais(
    IN p_id INT,
    IN p_nome VARCHAR(100)
)
BEGIN
    UPDATE tb_Pais
    SET nome = p_nome
    WHERE id_pais = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Pais
DELIMITER //
CREATE PROCEDURE DeletePais(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Pais WHERE id_pais = p_id;
END //
DELIMITER ;

-- Repita o padrão acima para as demais tabelas

-- Procedure de INSERT para tb_Usuario
DELIMITER //
CREATE PROCEDURE InsertUsuario(
    IN p_nome VARCHAR(100),
    IN p_sobrenome VARCHAR(100),
    IN p_email VARCHAR(255),
    IN p_senha VARCHAR(255),
    IN p_dt_nascimento DATE
)
BEGIN
    INSERT INTO tb_Usuario (nome, sobrenome, email, senha, dt_nascimento)
    VALUES (p_nome, p_sobrenome, p_email, p_senha, p_dt_nascimento);
END //
DELIMITER ;

-- Procedure de UPDATE para tb_Usuario
DELIMITER //
CREATE PROCEDURE UpdateUsuario(
    IN p_id INT,
    IN p_nome VARCHAR(100),
    IN p_sobrenome VARCHAR(100),
    IN p_email VARCHAR(255),
    IN p_senha VARCHAR(255),
    IN p_dt_nascimento DATE
)
BEGIN
    UPDATE tb_Usuario
    SET nome = p_nome, sobrenome = p_sobrenome, email = p_email,
    senha = p_senha, dt_nascimento = p_dt_nascimento
    WHERE id_usuario = p_id;
END //
DELIMITER ;

-- Procedure de DELETE para tb_Usuario
DELIMITER //
CREATE PROCEDURE DeleteUsuario(
    IN p_id INT
)
BEGIN
    DELETE FROM tb_Usuario WHERE id_usuario = p_id;
END //
DELIMITER ;