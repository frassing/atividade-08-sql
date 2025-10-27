-- 3) Liste todas as comandas (código, data, mesa e nome do cliente) 
-- mais uma coluna com o valor total da comanda. 
-- Ordene por data;
use cafeteria_bom_gosto;

-- Passo 1: Selecionar colunas da tabela comanda
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome from comanda c;

-- Passo 2: trazer da tabela item_comanda a quantidade dos produtos de cada registro de item
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.quantidade
-- from comanda c inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda;

-- Passo 3: trazer da tabela cardapio o valor unitário de cada item pedido num item da comanda
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.quantidade, cd.preco_unitario
-- from (comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio);

-- Passo 4: calcular o valor total de cada item da comanda multiplicando o preço unitário pela quantidade de produtos
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, ic.quantidade, cd.preco_unitario, (ic.quantidade*cd.preco_unitario) as total_item_comanda
-- from (comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio);

-- Passo 5: agrupar os itens por comanda e somar o total de cada item_comanda para chegar ao valor total da comanda
-- select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, sum(ic.quantidade*cd.preco_unitario) as total_comanda
-- from (comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
-- group by c.cod_comanda;

-- Passo 6: Ordenar por data emissão
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, sum(ic.quantidade*cd.preco_unitario) as total_comanda
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
group by c.cod_comanda
order by c.data_emissao;