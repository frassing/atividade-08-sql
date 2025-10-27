create database if not exists cafeteria_bom_gosto;
use cafeteria_bom_gosto;

create table Cardapio(
	cod_cardapio int not null,
    nome_item varchar(100) unique not null,
    descricao varchar(200),
    preco_unitario decimal(10,2) not null,
    constraint pk_cardapio primary key (cod_cardapio)
);

create table Comanda(
	cod_comanda int not null,
    data_emissao date not null,
    n_mesa varchar(10) not null,
    cliente_nome varchar(100) not null,
    constraint pk_comanda primary key (cod_comanda)
);

create table Item_Comanda(
	cod_item_comanda int not null,
    quantidade int not null,
    fk_cod_cardapio int not null,
    fk_cod_comanda int not null,
    constraint pk_item_comanda primary key (cod_item_comanda),
    constraint fk_item_cardapio foreign key (fk_cod_cardapio) references Cardapio(cod_cardapio),
    constraint fk_item_comanda foreign key (fk_cod_comanda) references Comanda(cod_comanda)
);