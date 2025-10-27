-- 2) APRESENTE TODAS AS COMANDAS (CÓDIGO, DATA, MESA E NOME DO CLIENTE) 
-- E OS ITENS DA COMANDA (CÓDIGO COMANDA, NOME DO CAFÉ, DESCRIÇÃO, QUANTIDADE, PREÇO UNITÁRIO E PREÇO TOTAL DO CAFÉ) DESTAS
-- ORDENANDO POR DATA, CÓDIGO DA COMANDA E TAMBÉM O NOME DO CAFÉ (ITEM)
use cafeteria_bom_gosto;

-- Passo 1: selecionar as colunas pedidas da tabela Comanda
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome from comanda c;

-- Passo 2: trazer os dados da tabela item_comanda (codigo_item_comanda, quantidade)
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.cod_item_comanda, ic.quantidade
-- from comanda c inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda;

-- Passo 3: trazer os dados da tabela cardapio (nome_item, descricao, preco_unitario)
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.cod_item_comanda, cd.nome_item, cd.descricao, ic.quantidade, cd.preco_unitario
-- from comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio;

-- Passo 4: Calcular o preço total de cada item de comanda
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.cod_item_comanda, cd.nome_item, cd.descricao, ic.quantidade, cd.preco_unitario, ic.quantidade*cd.preco_unitario as preco_total_item
-- from comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio;

-- Passo 5: Ordenar por Data, Código da comanda e nome do item
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.cod_item_comanda, cd.nome_item, cd.descricao, ic.quantidade, cd.preco_unitario, ic.quantidade*cd.preco_unitario as preco_total_item
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
order by c.data_emissao, c.cod_comanda, cd.nome_item;