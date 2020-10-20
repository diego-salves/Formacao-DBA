create table Cliente(
id_cli int primary key,
nome_cli varchar(100),
endereco_cli varchar(100),
cpf_cli varchar(20)
);

create table Produto(
id_pro int primary key,
nome_pro varchar(100),
valor_pro float,
estoque_pro varchar(100)
);

create table Setor(
id_set int primary key,
nome_set varchar(100)
);

create table Funcionario(
id_fun int primary key,
nome_fun varchar(100),
funcao_fun varchar(100),
id_set_fk int,
foreign key (id_set_fk) references Setor (id_set)
);

create table Venda(
id_ven int primary key,
valor_ven float,
data_ven date,
id_cli_fk int,
foreign key (id_cli_fk) references Cliente (id_cli),
id_pro_fk int,
foreign key (id_pro_fk) references Produto (id_pro),
id_fun_fk int,
foreign key (id_fun_fk) references Funcionario (id_fun)
);

create table Entrega(
id_ent int primary key,
data_ent date,
endereco_alternativo_ent varchar(200),
hora_ent time,
id_ven_fk int,
foreign key (id_ven_fk) references Venda (id_ven)
);

create table Caixa(
id_caixa int primary key,
saldo_inicial_caixa float,
total_recebimentos_caixa float,
total_retiradas_caixa float,
saldo_final_caixa float
);

create table Recebimento(
id_rec int primary key,
tipo_rec varchar(10),
data_rec date,
id_ven_fk int,
foreign key (id_ven_fk) references Venda (id_ven),
id_caixa_fk int,
foreign key (id_caixa_fk) references Caixa (id_caixa)
);

create table Fornecedor(
id_for int primary key,
nome_for varchar(100),
cnpj_for varchar(30)
);

create table Compra(
id_com int primary key,
valor_com float,
data_com date,
id_pro_fk int,
foreign key (id_pro_fk) references Produto (id_pro),
id_fun_fk int,
foreign key (id_fun_fk) references Funcionario (id_fun),
id_for_fk int,
foreign key (id_for_fk) references Fornecedor (id_for)
);

create table Despesa(
id_des int primary key,
nome_des varchar(100),
valor_des float,
id_com_fk int,
foreign key (id_com_fk) references Compra (id_com)
);

create table Pagamento(
id_pag int primary key,
tipo_pag varchar(100),
data_pag date,
id_caixa_fk int,
foreign key (id_caixa_fk) references Caixa (id_caixa),
id_des_fk int,
foreign key (id_des_fk) references Despesa (id_des)
);
