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

CREATE VIEW vw_usuario AS
SELECT
    u.id_usuario,
    u.nome,
    u.data_atualizacao,
    u.sobrenome,
    u.email,
    u.status,
    u.data_nascimento,
    u.data_cadastro,
    CONCAT(e.rua,', ',e.bairro, ', ',e.quadra,', ',e.numero) AS endereco,
    e.cep,
	p.nome as nome_pais,
    pl.descricao,
    CASE
        WHEN f.id_funcionario IS NOT NULL THEN 'Funcionário'
        WHEN c.id_cliente IS NOT NULL THEN 'Cliente'
		ELSE 'N/A'
    END AS tipo_usuario,
    (SELECT COUNT(*) FROM tb_perfil WHERE id_cliente = c.id_cliente) AS qtd_perfis    
FROM
    tb_usuario as u
    LEFT JOIN tb_funcionario as f ON f.id_usuario = u.id_usuario
    LEFT JOIN tb_cliente as c ON c.id_usuario = u.id_usuario
    LEFT JOIN tb_endereco as e ON e.id_endereco = u.id_endereco
    LEFT JOIN tb_pais as p ON p.id_pais = e.id_pais
    LEFT JOIN tb_plano as pl ON pl.id_plano = c.id_plano;

select * from vw_usuario;

-- vw_catalogo - Esta visualização deve conter todos os dados do catalogo, 
-- identificando series e filmes, (não devem estar presente os episodios nesta view), o idioma original 
-- e quantos idiomas são possíveis escolher, a classificação indicativa e suas categorias.

CREATE VIEW vw_catalogo AS
SELECT 
c.id_catalogo,
c.pais_origem,
c.imagem_capa,
c.titulo,
c.sinopse,
c.ano_lancamento,
c.duracao,
c.avaliacao,
c.data_atualizacao,
c.id_idioma,
i.nome as idioma_original,
cla.descricao as classificacao,
cat.nome as categoria,
(SELECT COUNT(*) from tb_catalogo_idioma WHERE id_catalogo = c.id_catalogo) AS Quant_idioma_disponivel,
CASE
        WHEN c.tipo_midia = 'F' THEN 'Filme'
        WHEN c.tipo_midia = 'S' THEN 'Serie'
		ELSE 'N/A'
END AS Tipo_catalogo
from tb_catalogo as c 
LEFT JOIN tb_idioma as i on i.id_idioma = c.id_idioma
LEFT JOIN tb_classificacao as cla on cla.id_classificacao=c.id_classificacao
LEFT JOIN Tb_catalogo_categoria as cc on cc.id_catalogo= c.id_catalogo 
LEFT JOIN tb_categoria as cat on cat.id_categoria= cc.id_categoria; 

select * from vw_catalogo;

-- vw_episodio - Esta visualização deve conter todos os dados dos episódios, qual sua serie, e de qual temporada ele é.

CREATE VIEW vw_episodio AS
SELECT 
c.titulo as nome_serie,
t.numero_temporada as numero_temporada,
t.titulo as nome_temporada,
t.quantidade_episodio,
e.numero_episodio
FROM tb_catalogo as c
INNER JOIN tb_episodio as e on e.id_catalogo=c.id_catalogo
LEFT JOIN tb_temporada as t on t.id_temporada=e.id_temporada;

select * from vw_episodio;
-- vw_temporada - Esta visualização deve conter todos os dados da temporada, a sua quantidade de episodios, e sua série.

CREATE VIEW vw_temporada AS
SELECT 
t.numero_temporada as numero_temporada,
t.titulo as nome_temporada,
t.descricao as descricao,
t.quantidade_episodio,
c.titulo as nome_serie
FROM tb_catalogo as c
inner JOIN tb_episodio as e on e.id_catalogo=c.id_catalogo
LEFT JOIN tb_temporada as t on t.id_temporada= e.id_temporada
LEFT JOIN tb_serie as s on s.id_serie = t.id_serie;

select *from tb_temporada;

-- vw_ator - Deve conter todos os dados dos atores, quantidades de filmes feito por ele, quantidade de series feita por ele.


CREATE VIEW vw_ator AS
SELECT 
a.nome,
a.sobrenome,
a.data_nascimento,
a.foto,
COUNT(F.ID_CATALOGO) as qtd_filmes,
COUNT(S.ID_CATALOGO) as qtd_series
FROM tb_ator  a 
LEFT JOIN tb_catalogo_ator as ca on ca.id_ator = a.id_ator
LEFT JOIN tb_catalogo as c on c.id_catalogo = ca.id_catalogo
LEFT JOIN tb_filme F ON f.id_catalogo = c.id_catalogo
LEFT JOIN tb_serie S ON s.id_catalogo = c.id_catalogo
GROUP BY a.nome, a.sobrenome, a.data_nascimento, a.foto;

select * from vw_ator;

-- vw_pagamento - Deve conter todos os dados de pagamento, seu tipo, o nome do cliente, seu plano e data de vencimento.
CREATE VIEW vw_pagamento AS
SELECT 
p.id_pagamento,
p.valor,
p.data_pagamento,
p.id_cartao,
c.id_plano,
u.nome as nome_cliente,
tp.nome as tipo_pagamento,
pl.descricao as nome_plano,
c.data_vencimento_plano
FROM tb_pagamento as P
LEFT JOIN tb_tipo_pagamento as Tp ON tp.id_tipo_pagamento = p.id_tipo_pagamento
LEFT JOIN tb_cliente as c ON p.id_cliente=c.id_cliente
LEFT JOIN tb_usuario as U ON u.id_usuario=c.id_usuario
LEFT JOIN tb_plano as pl ON pl.id_plano=c.id_plano;

select * from vw_pagamento;

-- vw_perfil - deve conter todos os dados do perfil e seu cliente.
CREATE VIEW vw_perfil AS
SELECT 
p.foto as foto_perfil, 
p.nome as nome_perfil,
p.tipo as tipo_perfil,
u.nome as nome_cliente,
c.id_usuario,
c.id_cartao,
c.id_plano,
c.data_vencimento_plano 
FROM tb_perfil p
INNER JOIN tb_cliente c ON p.id_cliente = c.id_cliente
LEFT JOIN tb_usuario u ON u.id_usuario =c.id_usuario;


