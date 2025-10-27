-- 5) Qual o total de faturamento por data? 
-- Ordene a consulta por data.
use cafeteria_bom_gosto;

-- Passo 1: Exibir todos os itens de comanda e calcular os seus totais
-- select c.cod_comanda, c.data_emissao, c.cliente_nome, ic.quantidade, cd.preco_unitario, (ic.quantidade*cd.preco_unitario) as total_itens
-- from comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda 
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio;
 
-- Passo 2: Agrupar o valor total dos itens por comandas
-- select c.cod_comanda, c.data_emissao, sum(ic.quantidade*cd.preco_unitario) as total_comanda from comanda c
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio
-- group by c.cod_comanda;

-- Passo 2: Agrupar o valor total das comandas por data
-- select c.data_emissao, count(c.cod_comanda) as comandas_emitidas, sum(ic.quantidade*cd.preco_unitario) as total
-- from comanda c 
-- inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
-- inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio
-- group by c.data_emissao;

-- Passo 3: Ordenar por data
select c.data_emissao, count(c.cod_comanda) as comandas_emitidas, sum(ic.quantidade*cd.preco_unitario) as total
from comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio
group by c.data_emissao
order by c.data_emissao;