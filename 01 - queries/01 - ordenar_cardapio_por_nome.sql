-- 1) FAÇA UMA LISTAGEM DO CARDÁPIO ORDENADA POR NOME
use cafeteria_bom_gosto;

-- select * from cardapio;  -- selecionar todas as colunas da tabela Cardápio

-- selecionar todas as colunas, ordenando pela coluna "nome_item"
-- select * from cardapio order by nome_item;

-- ou descrever o nome das colunas a serem retornadas, ordenando pela coluna "nome_item"
select cod_cardapio, nome_item, descricao, preco_unitario from cardapio order by nome_item; 