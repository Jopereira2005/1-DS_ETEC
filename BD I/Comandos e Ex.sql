create database Aula; -- Criando banco de dados
use Aula; -- Acessando o banco de dados
create table Cliente ( -- Criando tabela
cod_cli  int (11) primary Key auto_increment,
nome_cli varchar (50) not null,
ende_cli varchar (50), 
tel_cli varchar (11),
CPF_cli char (11) not null unique
);

create table Pedido (
cod_pedido int (11) primary key not null auto_increment,
data_pedido date not null,	
hora_pedido time ,	
cod_cli_ped int (11) not null,
valor_pedido decimal (8,2) not null,
DataEntrega_pedido date not null,
obs_pedido varchar (100)
);

create table Produto (
cod_pro  int (11) primary key not null auto_increment,
desc_produto varchar (100) not null,
val_unit_produto decimal (8,2) not null ,
unidade_produto varchar (10) not null,	
quant_em_estoq_prod decimal (10) not null	
);

create table Produto_Detalhe ( 
cod_pedido_prodD int (11) not null,
cod_prod_prodD int (11) not null,
quant_comp_prodD decimal (8) not null,
subt_produto decimal (8,2) not null,
primary key (cod_pedido_prodD,cod_prod_prodD)
);

alter table Pedido
add constraint fk_cliente_faz_pedido
foreign key (cod_cli_ped)
references Cliente(cod_cli);

alter table Produto_Detalhe
add constraint fk_pedido_tem_pedido_detalhe
foreign key (cod_pedido_prodD)
references Pedido(cod_pedido);

alter table Produto_Detalhe
add constraint fk_produto_tem_pedido_detalhe
foreign key (cod_prod_prodD)
references Produto(cod_prod);

show table;
describe Cliente;
describe Pedido;
describe Produto;
describe Produto_Detalhe;
--------------------------------------------------------------------------------------------------------------------------------------------

--Cadastro de Clientes
insert into Cliente (nome_cli, ende_cli, tel_cli, CPF_cli ) values ("Felipe", "Rua XI de Agosto, 100 ", "1532514242", "92648103672");
insert into Cliente (nome_cli, ende_cli, tel_cli, CPF_cli) values ("João Augusto", "Rua Paulo Holtz, 98", "15996532805", "00000000000");
insert into Cliente (nome_cli, CPF_cli) values ("Clebin", "00000000001");
insert into Cliente (nome_cli, ende_cli, CPF_cli) values ("Alek Fumaça", "Rua Tchurusbingo, 99", "0759264185");
insert into Cliente (nome_cli, ende_cli, CPF_cli) values ("Zoio", "Rua Tchurusbago, 99", "09876543211");
insert into Cliente (nome_cli, ende_cli, CPF_cli) values ("Laura", "Rua Não Sei, 999", "60000000000");
insert into Cliente (cod_cli, nome_cli, ende_cli, CPF_cli) values (0, "Pedro", "Boituva, Rua N/A, 999", "00000000060");
insert into Cliente (cod_cli, nome_cli, CPF_cli) values (0, "Jerson", "00008000000");
insert into Cliente (nome_cli,ende_cli, CPF_cli) values ("Robertin da XJ6", "Rua Dã Ran, 500", "09000000000");
insert into Cliente (nome_cli,ende_cli, CPF_cli) values ("Claudio da Hornet", "Rua Ran Dan Dan, 600", "08374966271");
--Fim do Cadastro de Clientes
----------------------------------------------------------------------------------------------------------------------------------------------
--Cadastro dos Pedidos
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 1, 10399, 20210902);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 2, 1999, 20211117);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 3, 999, 20210628);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 4, 111, 20210706);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 5, 199, 20230123);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 6, 1000, 20210706);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 7, 100, 20210911);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 8, 100, 20211005);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido) values (0, curdate(), curtime(), 9, 100, 20220104);
insert into Pedido (cod_pedido, data_pedido, hora_pedido, cod_cli_ped, valor_pedido, DataEntrega_pedido, obs_pedido) values (0, curdate(), curtime(), 10, 100, 20211109, "Entregar de manhã");
--Fim do Cadastro dos Pedidos
--------------------------------------------------------------------------------------------------------------------------------------------
--Cadastros dos Produtos
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Panela", 99, "Unidade", 100);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Celular", 10000, "Unidade", 600);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Mouse Gamer", 209.99, "Unidade", 199);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Papel", 0.99, "Unidade", 500);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Carro", 100000.99, "", 198);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Calcario", 10.99, "5 kilos", 99);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Cubo", 10, "Unidade", 199);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Amoeba", 10, "Unidade", 1999);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "Teclado", 699.99, "Unidade", 80);
insert into Produto (cod_pro, desc_produto, val_unit_produto, unidade_produto, quant_em_estoq_prod) values (0, "M4A4", 50999.99, "Unidade", 199);
--Fim do cadastro dos Produtos
---------------------------------------------------------------------------------------------------------------------------------------------
--Cadastro de Produto Detalhe
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (1, 2, 1, 10000); 
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (1, 1, 1, 10099);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (1, 3, 1, 20099);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (2, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (2, 1, 1, 99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (2, 2, 1, 9999);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (3, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (3, 5, 1, 9999);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (3, 2, 1, 10000);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (4, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (4, 2, 1, 99222);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (4, 6, 1, 99);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (5, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (5, 2, 1, 999999);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (5, 1, 1, 99123);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (6, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (6, 2, 1, 99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (6, 3, 1, 1000);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (7, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (7, 2, 1, 99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (7, 5, 1, 99999);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (8, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (8, 2, 1, 99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (8, 7, 1, 99);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (9, 10, 4, 150999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (9, 2, 1, 9999);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (9, 1, 1, 978);

insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (10, 10, 1, 50999.99);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (10, 2, 1, 999);
insert into Produto_Detalhe (cod_pedido_prodD, cod_prod_prodD, Quant_comp_prodD, subt_produto) values (10, 9, 1, 9000);
--Fim :)

select * from Cliente;
select * from Pedido;
select * from Produto;
select * from Produto_Detalhe;

--Treino de update e delete--

update Cliente 
set nome_cli = "Roberto Vieira" , tel_cli = "1500000000"
where cod_cli = 1;

update Produto_Detalhe
set subt_produto = 50000.00 , quant_comp_prodD = 2
where cod_pedido_prodD = 10 and cod_prod_prodD = 10;

update Pedido 
set valor_pedido = 1000, DataEntrega_pedido = 20220902
where cod_pedido = 1;

update Pedido 
set valor_pedido = 3999.19, DataEntrega_pedido = 20231225
where cod_pedido = 3;

update Produto
set desc_produto = "Carburador", val_unit_produto = 2000.99
where cod_pro = 1;

delete from Produto_Detalhe
where cod_pedido_prodD = 9 and cod_prod_prodD = 1;

delete from Produto_Detalhe
where cod_pedido_prodD = 10 and cod_prod_prodD = 9;

delete from Produto_Detalhe
where cod_pedido_prodD = 8 and cod_prod_prodD = 7;

delete from Produto_Detalhe
where cod_pedido_prodD = 10 and cod_prod_prodD = 10;

delete from Produto_Detalhe
where cod_pedido_prodD = 1 and cod_prod_prodD = 1;


---------------------------------------------------------------------------------------------------------------------------------------------

--DDL (data definition language language)
--cria, altera e exclui estruturas

--DML (data manipulation language)
--CRUD SQL (criar, ler, alterar e excluir dados)

--insert (inserir, criar dados)
insert into Cliente values (0,"Felipe", "Rua XI de Agosto, 100 ", "1532514242", "092648103672");
--Modo parametrizado
insert into Cliente (nome_cli, ende_cli, tel_cli, CPF_cli) values ("João Augusto", "Rua Paulo Holtz, 98", "15996532805", "000000000000");

--select (ler dados)
select * from Cliente;

select * from Produto_Detalhe
where subt_produto between 0.00 and 5000.00;

select * from Cliente
where nome_cli between "A%" and "J%";

select * from Pedido
where DataEntrega_pedido between "2021-01-01" and "2023-09-01";

select * from Cliente
where nome_cli like "C%";


--update (alterar dados)

update Cliente 
set nome_cli = "Roberto Vieira"
where cod_cli = 1;

update Cliente 
set nome_cli = "Roberto Vieira"
where cod_cli = 1 ; 

--delete (excluir, apagar dados)

delete from Cliente
where cod_cli = 1