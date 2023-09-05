-- Criação da tabela Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    CPF_CNPJ VARCHAR(20),
    Tipo VARCHAR(2)
);

-- Criação da tabela Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_ID INT,
    Data DATETIME,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID)
);

-- Criação da tabela Produtos
CREATE TABLE IF NOT EXISTS Produtos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Preco DECIMAL(10, 2),
    Estoque INT
);

-- Criação da tabela ItensPedido (tabela de junção)
CREATE TABLE IF NOT EXISTS ItensPedido (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_ID INT,
    Produto_ID INT,
    Quantidade INT,
    FOREIGN KEY (Pedido_ID) REFERENCES Pedidos(ID),
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID)
);

-- Criação da tabela Fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255)
);

-- Criação da tabela Estoque
CREATE TABLE IF NOT EXISTS Estoque (
    Produto_ID INT,
    Fornecedor_ID INT,
    Quantidade INT,
    FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID),
    FOREIGN KEY (Fornecedor_ID) REFERENCES Fornecedores(ID)
);

-- Criação da tabela Formas de Pagamento
CREATE TABLE IF NOT EXISTS Formas_de_Pagamento (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Descricao VARCHAR(255)
);

-- Criação da tabela Pagamentos
CREATE TABLE IF NOT EXISTS Pagamentos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_ID INT,
    FormaPagamento_ID INT,
    FOREIGN KEY (Pedido_ID) REFERENCES Pedidos(ID),
    FOREIGN KEY (FormaPagamento_ID) REFERENCES Formas_de_Pagamento(ID)
);

-- Criação da tabela Entregas
CREATE TABLE IF NOT EXISTS Entregas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_ID INT,
    Status VARCHAR(255),
    CodigoRastreio VARCHAR(50),
    FOREIGN KEY (Pedido_ID) REFERENCES Pedidos(ID)
);
