-- Inserir dados fictícios na tabela Clientes
INSERT INTO Clientes (Nome, CPF_CNPJ, Tipo)
VALUES
    ('Cliente 1', '123.456.789-00', 'PF'),
    ('Cliente 2', '12.345.678/0001-00', 'PJ'),
    ('Cliente 3', '987.654.321-00', 'PF');

-- Inserir dados fictícios na tabela Produtos
INSERT INTO Produtos (Nome, Preco, Estoque)
VALUES
    ('Produto A', 50.00, 100),
    ('Produto B', 30.00, 75),
    ('Produto C', 25.00, 120);

-- Inserir dados fictícios na tabela Fornecedores
INSERT INTO Fornecedores (Nome)
VALUES
    ('Fornecedor X'),
    ('Fornecedor Y'),
    ('Fornecedor Z');

-- Inserir dados fictícios na tabela Formas de Pagamento
INSERT INTO Formas_de_Pagamento (Descricao)
VALUES
    ('Cartão de Crédito'),
    ('Boleto Bancário'),
    ('Transferência Bancária');

-- Inserir dados fictícios na tabela Pedidos
INSERT INTO Pedidos (Cliente_ID, Data, ValorTotal)
VALUES
    (1, '2023-09-05 10:00:00', 150.00),
    (2, '2023-09-05 11:30:00', 120.00),
    (3, '2023-09-05 12:45:00', 75.00);

-- Inserir dados fictícios na tabela ItensPedido
INSERT INTO ItensPedido (Pedido_ID, Produto_ID, Quantidade)
VALUES
    (1, 1, 2),
    (1, 2, 3),
    (2, 2, 2),
    (3, 3, 4);

-- Inserir dados fictícios na tabela Estoque
INSERT INTO Estoque (Produto_ID, Fornecedor_ID, Quantidade)
VALUES
    (1, 1, 50),
    (2, 2, 40),
    (3, 3, 60);

-- Inserir dados fictícios na tabela Pagamentos
INSERT INTO Pagamentos (Pedido_ID, FormaPagamento_ID)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Inserir dados fictícios na tabela Entregas
INSERT INTO Entregas (Pedido_ID, Status, CodigoRastreio)
VALUES
    (1, 'Em andamento', 'ABC123'),
    (2, 'Entregue', 'DEF456'),
    (3, 'Aguardando envio', 'GHI789');
