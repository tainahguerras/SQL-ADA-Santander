CREATE TABLE categorias 
( 
 id_categoria INTEGER PRIMARY KEY,  -- Identificador único para cada categoria
 nome_categoria TEXT  -- Nome da categoria
);

CREATE TABLE clientes 
( 
 id_cliente INTEGER PRIMARY KEY,  -- Identificador único para cada cliente
 nome_cliente TEXT,  -- Nome do cliente
 idade INTEGER,  -- Idade do cliente
 endereco TEXT  -- Endereço do cliente
);

CREATE TABLE fornecedores 
( 
 id_fornecedor INTEGER PRIMARY KEY,  -- Identificador único para cada fornecedor
 nome TEXT,  -- Nome do fornecedor
 contato TEXT  -- Contato do fornecedor (pode ser telefone, email, etc.)
);

CREATE TABLE marcas 
( 
 id_marca TEXT PRIMARY KEY,  -- Identificador único para cada marca
 nome TEXT  -- Nome da marca
);

CREATE TABLE produtos 
( 
 id_produto INTEGER PRIMARY KEY,  -- Identificador único para cada produto
 nome_produto TEXT,  -- Nome do produto
 preco REAL,  -- Preço do produto
 categoria_id INTEGER,  -- Referência à categoria do produto
 marca_id TEXT,  -- Referência à marca do produto
 fornecedor_id INTEGER,  -- Referência ao fornecedor do produto
 data_estoque DATE,  -- Data de entrada do produto no estoque
 status TEXT,  -- Status atual do produto (por exemplo, disponível, esgotado)
 FOREIGN KEY(categoria_id) REFERENCES categorias (id_categoria),  -- Chave estrangeira para a tabela Categorias
 FOREIGN KEY(marca_id) REFERENCES marcas (id_marca),  -- Chave estrangeira para a tabela Marcas
 FOREIGN KEY(fornecedor_id) REFERENCES fornecedores (id_fornecedor)  -- Chave estrangeira para a tabela Fornecedores
);

CREATE TABLE vendas 
( 
 id_venda INTEGER PRIMARY KEY,  -- Identificador único para cada venda
 data_venda DATE,  -- Data em que a venda foi realizada
 total_venda REAL,  -- Valor total da venda
 cliente_id INTEGER,  -- Referência ao cliente que fez a compra
 FOREIGN KEY(cliente_id) REFERENCES clientes (id_cliente)  -- Chave estrangeira para a tabela Clientes
);

 CREATE TABLE itens_venda 
( 
 venda_id INTEGER,  -- Referência à venda
 produto_id INTEGER,  -- Referência ao produto vendido
 PRIMARY KEY (venda_id, produto_id),  -- Chave primária composta pelas referências à venda e ao produto
 FOREIGN KEY(venda_id) REFERENCES vendas (id_venda),  -- Chave estrangeira para a tabela Vendas
 FOREIGN KEY(produto_id) REFERENCES produtos (id_produto)  -- Chave estrangeira para a tabela Produtos
);

 
