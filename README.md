# Modelagem, Construção e Pesquisa em Banco de Dados

Este repositório contém os arquivos de resolução da atividade 8 do curso DEV Full Stack Jr. da +praTI. O objetivo dos exercícios é praticar os conceitos estudados no módulo de Banco de Dados.

## Situação
A cafeteria BomGosto deseja controlar as suas vendas de café.<br> 
A BomGosto controla suas vendas a partir de uma comanda, esta tem um código único, data, o número da mesa do cliente e o nome do cliente registrados.<br> 
Nos itens da comanda é possível relacionar vários cafés listados no cardápio que foram vendidos. Cada item da comanda possui o código do cardápio e a quantidade requisitada deste e, não é possível inserir o mesmo código de cardápio mais de uma vez na mesma comanda.<br> 
No cardápio é apresentado o nome único do café, a descrição da sua composição e o preço unitário.

## Exercícios
Desenvolva os scripts SQL para atender cada uma das questões abaixo:

1) Faça uma listagem do cardápio ordenada por nome;

2) Apresente todas as comandas (código, data, mesa e nome do cliente) e os itens da comanda (código comanda, nome do café, descricão, quantidade, preço unitário e preço total do café) destas ordenados data e código da comanda e, também o nome do café;

3) Liste todas as comandas (código, data, mesa e nome do cliente) mais uma coluna com o valor total da comanda. Ordene por data esta listagem;

4) Faça a mesma listagem das comandas da questão anterior (6), mas traga apenas as comandas que possuem mais do que um tipo de café na comanda;

5) Qual o total de faturamento por data? ordene por data esta consulta.

## Estrutura do Repositório
- a pasta `00 - setup` contém os arquivos para definição do banco de dados e tabelas, assim como valores para popular a base;
- a pasta `01 - queries` contém os arquivos ".sql".
  - O arquivo 00, agrega todas as respostas das questões;
  - Já os arquivos seguintes contêm as resoluções individuais das questões com o passo a passo do meu raciocínio para responder a questão.
- a pasta `02 - results` contém screenshots dos resultados das consultas;
- as imagens 01 e 02 são a base da modelagem do banco de dados gerado. 

```
atividade-08-sql/
 ├─ 00 - setup/
 │   ├─ ddl-comands.sql
 │   ├─ dml-comands.sql
 ├─ 01 - queries
 │   ├─ 00 - todas_as_consultas.sql
 │   ├─ 01 - ordenar_cardapio_por_nome.sql
 │   ├─ 02 - comanda_itens_precototalitens_ordenado_por_data_cod_nome.sql
 │   ├─ 03 - comanda_com_total_ordenado_por_data.sql
 │   ├─ 04 - comandas_com_mais_de_um_item.sql
 │   ├─ 05 - total_faturamento_por_data.sql
 ├─ 02 - results/
 │   ├─ 01 - listar cardapio ordenado por nome item.png
 │   ├─ ...     
 ├─ 01 - cafeteria_bomgosto-diagrama.png  
 ├─ 02 - cafeteria_bomgosto-tabelas_exemplo.png
 └─ README.md (está aqui)
```
