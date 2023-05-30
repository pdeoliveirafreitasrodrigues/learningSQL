--ATIVIDADE 04
--1
select * from pessoa;
--2
select nome, cpf from pessoa where ativo = true;
--3
select nome, precocusto from produto;
--4
select codigo, numero from mesa;
--5
select nome, descricao from produto where ativo = true;
--6
select nome, precovenda from produto where precovenda is not null;
--7
select nome, telefone from pessoa where ativo = true and telefone is not null;
--8
select * from comanda where valor >= 50;
--9
select * from produto where precocusto < 10;
--10
select nome, codigo from mesa where atendenteid = 1;
select nome, codigo from mesa where atendenteid = 2;
select nome, codigo from mesa where atendenteid = 3;
select nome, codigo from mesa where atendenteid = 4;
--11
select * from comanda where valor between 30 and 50;
--12
select m.codigo, p.nome "atendente", p.id "codigo atendente" 
from mesa as m
join pessoa as p on m.atendenteid = p.id
where p.nome like '%ernanda%livei%';

--ATIVIDADE 05

--1
select nome, precovenda from produto order by precovenda asc;
--2
select nome, quantidademaximapessoas from mesa order by quantidademaximapessoas asc;
--3
select * from pessoa where tipopessoa = 'C' order by nome asc;
--4
select * from comanda order by valor asc;
--5
select nome from statuscomanda order by nome asc;
--6
select * from produto order by precovenda desc limit 5;
--7
select * from comanda order by codigo asc offset 3;
--8
select * from mesa where quantidademaximapessoas > 4 order by numero asc limit 3;
--9
select * from produto where ativo = true
	order by nome asc
	limit 4
	offset 6;
--10
select * from comanda where valor > 100
	order by valor
	limit 2;


--ATIVIDADE 06

--1
select 'R$'|| sum(valor) ||',00' "Soma do valor das comandas" from comanda;

--2
select max(precovenda) "Preço de venda" from produto;

--3
select min(tempodepreparo) from produto;

--4
select avg(precocusto) from produto;

--5
 select count(id) from mesa where statusmesaid <> 1;

--6
select sum(valortotal) from comandaproduto;

--7
select max(precovenda) from produto;

--8
select max(quantidade) from comandaproduto;

--9
select avg(valortotal) from comandaproduto;

--10
select count(ativo) from produto where ativo = true;


--ATIVIDADE 07

--1
select distinct(nome) from produto;

--2
select statuscomandaid, count(statuscomandaid) from comanda group by statuscomandaid;

--3
select * from comanda;
select * from comandaproduto;

select comandaid, max(quantidade) from comandaproduto where comandaid = 2 group by comandaid; 

--4
select * from mesa;
select mesaid, count(clienteid) from comanda group by mesaid having count(clienteid) > 3; 

--5
select precovenda from produto group by precovenda having precovenda > 10;

--6
SELECT pessoa.nome AS atendente, SUM(comanda.valor) AS valor_comanda
FROM comanda
JOIN mesa ON mesa.id = comanda.mesaId
JOIN pessoa ON pessoa.id = mesa.atendenteId
WHERE comanda.valor > 100 and pessoa.tipopessoa = 'C'
GROUP BY pessoa.nome;

--7
select comandaid, avg(quantidade) from comandaproduto
group by comandaid
having avg(quantidade) >= 3;

--8
select produto.descricao, count(comandaproduto.produtoid) 
from produto
join comandaproduto on produto.id = comandaproduto.produtoid 
group by produto.descricao
having count(comandaproduto.produtoid) >= 2
order by produto.descricao asc;

--9
select mesa.quantidademaximapessoas as Quantidade_Suportada_Mesa, count(comanda.clienteid) as Quantidade_presente
from comanda
join mesa on mesa.id = comanda.mesaid
group by mesa.quantidademaximapessoas 
having count(comanda.clienteid) <= mesa.quantidademaximapessoas 
order by mesa.quantidademaximapessoas desc;

--10
select pessoa.nome as "Cliente", count(comanda.id) as "Quantidade de Comandas"
from comanda
join pessoa on pessoa.id = comanda.clienteid 
where pessoa.tipopessoa = 'C'
group by pessoa.nome 
having count(comanda.id) >= 2
order by pessoa.nome;


