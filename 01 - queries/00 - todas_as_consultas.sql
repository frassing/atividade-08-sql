use cafeteria_bom_gosto;

-- 1) Faça uma listagem do Cardápio ordenada por nome
select cod_cardapio, nome_item, descricao, preco_unitario from cardapio order by nome_item;

-- 2) Apresente todas as comandas (código, data, mesa e nome do cliente) 
-- e os itens da comanda (código comanda, nome do café, descricão, quantidade, preço unitário e preço total do café) destas 
-- ordenando por data, código da comanda e também o nome do café (item)
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.cod_item_comanda, cd.nome_item, cd.descricao, ic.quantidade, cd.preco_unitario, ic.quantidade*cd.preco_unitario as preco_total_item
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
order by c.data_emissao, c.cod_comanda, cd.nome_item;

-- 3) Liste todas as comandas (código, data, mesa e nome do cliente) 
-- mais uma coluna com o valor total da comanda. 
-- Ordene por data
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, sum(ic.quantidade*cd.preco_unitario) as total_comanda
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
group by c.cod_comanda
order by c.data_emissao;

-- 4) Faça a mesma listagem das comandas da questão anterior (3), 
-- mas traga apenas as comandas que possuem mais do que um tipo de café/item na comanda
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, count(ic.fk_cod_comanda) as itens_na_comanda, sum(ic.quantidade*cd.preco_unitario) as total_comanda
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
group by c.cod_comanda
having itens_na_comanda > 1
order by c.data_emissao;

-- 5) Qual o total de faturamento por data? 
-- Ordene a consulta por data.
select c.data_emissao, count(c.cod_comanda) as comandas_emitidas, sum(ic.quantidade*cd.preco_unitario) as total
from comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio
group by c.data_emissao
order by c.data_emissao;


