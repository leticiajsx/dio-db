-- 1. Quantos pedidos foram feitos por cada cliente?
SELECT 
    C.Nome AS Cliente,
    COUNT(P.ID) AS Quantidade_de_Pedidos
FROM
    Clientes C
LEFT JOIN
    Pedidos P ON C.ID = P.Cliente_ID
GROUP BY
    C.Nome;

-- 2. Algum vendedor também é fornecedor?
SELECT 
    DISTINCT V.Nome AS Vendedor,
    F.Nome AS Fornecedor
FROM
    Fornecedores F
INNER JOIN
    Estoque E ON F.ID = E.Fornecedor_ID
INNER JOIN
    Produtos P ON E.Produto_ID = P.ID
INNER JOIN
    ItensPedido IP ON P.ID = IP.Produto_ID
INNER JOIN
    Pedidos PD ON IP.Pedido_ID = PD.ID
INNER JOIN
    Clientes C ON PD.Cliente_ID = C.ID
INNER JOIN
    Vendedores V ON C.Vendedor_ID = V.ID;

-- 3. Relação de produtos, fornecedores e estoques:
SELECT 
    P.Nome AS Produto,
    F.Nome AS Fornecedor,
    E.Quantidade AS Quantidade_em_Estoque
FROM
    Produtos P
INNER JOIN
    Estoque E ON P.ID = E.Produto_ID
INNER JOIN
    Fornecedores F ON E.Fornecedor_ID = F.ID;

-- 4. Relação de nomes dos fornecedores e nomes dos produtos:
SELECT 
    P.Nome AS Produto,
    F.Nome AS Fornecedor
FROM
    Produtos P
INNER JOIN
    Estoque E ON P.ID = E.Produto_ID
INNER JOIN
    Fornecedores F ON E.Fornecedor_ID = F.ID;
