-- 4) Faça a mesma listagem das comandas da questão anterior (3), 
-- mas traga apenas as comandas que possuem mais do que um tipo de café/item na comanda
use cafeteria_bom_gosto;

-- Passo 1: visualizar itens de comanda
-- select * from item_comanda;

-- Passo 2: agrupar itens de comanda pelo código da comanda
-- select fk_cod_comanda from item_comanda group by fk_cod_comanda;

-- Passo 3: fazer contagem de quantos itens cada código de comanda possui
-- select fk_cod_comanda, count(fk_cod_comanda) from item_comanda group by fk_cod_comanda;

-- Passo 4: filtrar lista para exibir apenas códigos de comanda com mais de 1 item associado
-- select fk_cod_comanda, count(fk_cod_comanda) as itens_na_comanda from item_comanda group by fk_cod_comanda having itens_na_comanda > 1;

-- Passo 5: usar a listagem da questão anterior, acrescentando o filtro "having itens_na_comanda > 1"
select c.cod_comanda, c.data_emissao, c.n_mesa, c.cliente_nome, count(ic.fk_cod_comanda) as itens_na_comanda, sum(ic.quantidade*cd.preco_unitario) as total_comanda
from (comanda c 
inner join item_comanda ic on c.cod_comanda = ic.fk_cod_comanda
inner join cardapio cd on ic.fk_cod_cardapio = cd.cod_cardapio)
group by c.cod_comanda
having itens_na_comanda > 1
order by c.data_emissao;
