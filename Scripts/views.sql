USE db_streamer1;

CREATE VIEW vw_usuario AS
SELECT
    U.id_usuario,
    U.nome,
    U.sobrenome,
    U.dt_cadastro,
    U.dt_nascimento,
    U.status,
    C.id_cliente,
    F.id_funcionario,
    E.endereco,
    P.nome AS pais_origem,
    COUNT(DISTINCT PR.id_perfil) AS qtd_perfis,
    P.nome AS plano
FROM Usuario U
LEFT JOIN Cliente C ON U.id_cliente = C.id_cliente
LEFT JOIN Funcionario F ON U.id_funcionario = F.id_funcionario
LEFT JOIN Endereco E ON U.id_usuario = E.id_usuario
LEFT JOIN Pais P ON E.id_pais = P.id_pais
LEFT JOIN Perfil PR ON U.id_usuario = PR.id_perfil
LEFT JOIN Plano PL ON C.id_perfil = PL.id_plano
GROUP BY U.id_usuario;

USE db_streamer1;

CREATE VIEW vw_catalogo AS
SELECT c.id_catalogo, c.imagem_capa, c.idioma_original, COUNT(DISTINCT i.id_idioma) AS qtd_idiomas,
       cl.id_classificacao, cl.descricao, cat.nome
FROM Catalogo c
JOIN Idioma i ON c.id_idioma = i.id_idioma
JOIN Classificacao cl ON c.id_classificacao = cl.id_classificacao
JOIN Catalogo_categoria cc ON c.id_catalogo = cc.id_catalogo
JOIN Categoria cat ON cc.id_categoria = cat.id_categoria
WHERE c.id_serie IS NULL
GROUP BY c.id_catalogo, c.imagem_capa, c.idioma_original, cl.id_classificacao, cl.descricao, cat.nome;



USE db_streamer1;

CREATE VIEW vw_episodio AS
SELECT
    e.*,
    s.id_serie AS serie,
    t.titulo AS temporada
FROM
    Episodio e
    JOIN Temporada t ON e.id_temporada = t.id_temporada
    JOIN Serie s ON e.id_serie = s.id_serie;
    
    USE db_streamer1;

CREATE VIEW vw_temporada AS
SELECT
    t.*,
    COUNT(e.id_episodio) AS quantidade_episodios,
    s.id_serie AS serie
FROM
    Temporada t
    JOIN Episodio e ON t.id_temporada = e.id_temporada
    JOIN Serie s ON t.id_serie = s.id_serie
GROUP BY
    t.id_temporada, s.id_serie;



USE db_streamer1;

CREATE VIEW vw_ator AS
SELECT
    a.*,
    COUNT(DISTINCT fm.id_filme) AS quantidade_filmes,
    COUNT(DISTINCT s.id_serie) AS quantidade_series
FROM
    Ator a
    LEFT JOIN ator fa ON a.id_ator = fa.id_ator
    LEFT JOIN Filme fm ON fm.id_filme = fm.id_filme
    LEFT JOIN ator sa ON a.id_ator = sa.id_ator
    LEFT JOIN Serie s ON s.id_serie = s.id_serie
GROUP BY
    a.id_ator;

CREATE VIEW vw_perfil AS
SELECT
    id_perfil AS perfil,
    nome AS perfil_nome,
    perfil.data_nascimento AS perfil_data_nascimento,
    cliente.id AS cliente_id,
    cliente.nome AS cliente_nome,
    cliente.email AS cliente_email,
    cliente.endereco AS cliente_endereco
FROM
    perfil
JOIN
    cliente ON perfil.cliente_id = cliente.id;
    
    CREATE VIEW vw_pagamento AS
SELECT 
    p.payment_id,
    p.payment_info,
    p.payment_type,
    c.customer_name,
    c.customer_plan,
    p.due_date
FROM 
    payments p
JOIN 
    customers c ON p.customer_id = c.customer_id;


USE db_streamer1;

CREATE VIEW vw_pagamento AS
SELECT
    p.*,
    p.forma_pagamento AS forma,
    c.id_cliente AS nome_cliente,
    pl.id_plano AS nome_plano,
    p.dt_pagamento AS vencimento
FROM
    Pagamento p
    JOIN Tipo_Pagamento pt ON p.id_pagamento = pt.id_pagamento
    JOIN Cliente c ON p.id_cliente = c.id_cliente
    JOIN Plano pl ON c.id_cliente = pl.id_plano;
    
    USE db_streamer1;

CREATE VIEW vw_perfil AS
SELECT
    pf.*,
    c.id_cliente AS nome_cliente,
    c.id_perfil AS perfil_cliente,
    c.d
FROM
    Perfil pf
    JOIN Cliente c ON pf.id_cliente = c.id_cliente;


CREATE VIEW vw_perfil AS
SELECT Perfil.id_perfil, Perfil.nome AS perfil_nome, Perfil.foto AS perfil_foto,
       Cliente.id_cliente, Cliente.id_cartao,
       Usuario.id_usuario, Usuario.nome AS usuario_nome, Usuario.sobrenome AS usuario_sobrenome,
       Usuario.dt_cadastro, Usuario.dt_nascimento, Usuario.status,
       Endereco.endereco, Pais.nome AS pais_nome,
       Cartao_credito.numero AS cartao_numero, Cartao_credito.dt_vencimento, Cartao_credito.cod_seguranca, Cartao_credito.titular
FROM Perfil
JOIN Cliente ON Cliente.id_perfil = Perfil.id_perfil
JOIN Usuario ON Usuario.id_cliente = Cliente.id_cliente
LEFT JOIN Endereco ON Endereco.id_usuario = Usuario.id_usuario
LEFT JOIN Pais ON Pais.id_pais = Endereco.id_pais
LEFT JOIN Cartao_credito ON Cartao_credito.id_cartao = Cliente.id_cartao;

