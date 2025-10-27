use cafeteria_bom_gosto;

insert into cardapio(cod_cardapio, nome_item, descricao, preco_unitario) 
values
	(1, 'Café Espresso', 'Tradicional', 5.50),
    (2, 'Capuccino', 'Café, leite vaporizado e espuma de leite', 9.00),
    (3, 'Latte Machiato', 'Leite, espuma de leite e dose de café', 9.50),
    (4, 'Mocha', 'Café, chocolate, leite e chantilly', 12.00),
    (5, 'Chá de Limão', 'Chá preto com limão espremido', 7.00),
    (6, 'Suco de Laranja', 'Suco natural de laranja', 8.00),
    (7, 'Croissant', 'Massa folhada amanteigada', 6.50),
    (8, 'Pão de Queijo', 'Tradicional pão de queijo', 4.00),
    (9, 'Bolo de Cenoura', 'Bolo fofinho com cobertura de chocolate', 10.00),
    (10, 'Salada de Frutas', 'Mix de frutas frescas da estação', 15.00);


insert into comanda(cod_comanda, data_emissao, n_mesa, cliente_nome)
values
	(101, '2025-10-20', 5, 'Paula Mendes'),
    (102, '2025-10-20', 3, 'Felipe Costa'),
    (103, '2025-10-20', 4, 'Giovana Souza'),
    (104, '2025-10-21', 5, 'Laura Gomes'),
    (105, '2025-10-21', 1, 'Erika Santos'),
    (106, '2025-10-21', 8, 'Otávio Correia'),
    (107, '2025-10-21', 2, 'Marcos Dias'),
    (108, '2025-10-22', 6, 'Ana Silva'),
    (109, '2025-10-22', 6, 'Daniel Pereira'),
    (110, '2025-10-22', 7, 'Bruno Martins');
    
    
insert into item_comanda(cod_item_comanda, fk_cod_comanda, fk_cod_cardapio, quantidade)
values
	(1, 101, 1, 1),
    (2, 101, 7, 1),
    (3, 102, 3, 1),
    (4, 103, 3, 2),
    (5, 103, 2, 3),
    (6, 103, 7, 6),
    (7, 104, 6, 1),
    (8, 104, 1, 1),
    (9, 105, 6, 2),
    (10, 106, 5, 3),
    (11, 107, 8, 4),
    (12, 108, 4, 1),
    (13, 108, 2, 1),
    (14, 108, 7, 2),
    (15, 108, 8, 2),
    (16, 109, 1, 1),
    (17, 110, 1, 4),
    (18, 110, 3, 1);