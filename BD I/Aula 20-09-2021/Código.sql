create database DB_LgBrasil; 
use DB_LgBrasil; 
create table Modelo ( 
codMod int (11) primary Key auto_increment,
nomeMod varchar (50) not null,
dataFabr date not null, 
voltagem int (3) not null
);

create table Fornecedor ( 
CNPJforn int (14) primary key auto_increment,
telForn char (11) not null,
endForn varchar (50) not null,
nomeForn varchar (50) not null
);

create table Componentes (
codComp int (11) primary key auto_increment,
descComp varchar (50) not null,
valorUnit decimal (8,2) not null
);

create table ModeloD ( 
codModDM int (11),
codCompDM int (11) ,
primary key (codModDM,codCompDM)
);

create table FornecedorD ( 
codCompDF int (11),
CNPJfornDF int (11),
primary key (codCompDF,CNPJfornDF)
);

alter table ModeloD
add constraint fk_Modelo_contém_Componentes
foreign key (codModDM)
references Modelo(codMod);

alter table ModeloD
add constraint fk_Modelo_contém_Componentes
foreign key (codCompDM)
references Componentes(codComp);

alter table FornecedorD
add constraint fk_Modelo_contém_Componentes
foreign key (codCompDF)
references Componentes(codComp);

alter table FornecedorD
add constraint fk_Fornecedor_fornece_Componentes
foreign key (CNPJfornDF)
references Fornecedor(CNPJforn);

describe Modelo;
describe Componentes;
describe Fornecedor;
describe FornecedorD;
describe ModeloD;


insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "AlienCore" ,curdate(), "110");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Monster", curdate(), "220");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Ion", curdate(), "110");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Kraken", curdate(), "220");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Behemoth", curdate(), "110");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Phoenix", curdate(), "220");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "RedEye", curdate(), "220");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Kumara", curdate(), "110");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Falcon", curdate(), "110");
insert into Modelo (codMod, nomeMod, dataFabr, voltagem) values (0, "Strong", curdate(), "110");


insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "12345678901", "Rua Tcaplau 98", "Razer");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "12121312314", "Rua Tcaplei 11", "Corsair");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "73567344754", "Rua Blau 232", "GFallen");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "98892378947", "Rua Plei 341", "HyperX");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "24742367429", "Rua Etec 678", "RedDragon");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "43573853396", "Rua Depressão 7", "Logitech");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "38724892734", "Rua Feliciade 78", "Warrior");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "23423423256", "Rua Danrana 575", "Omega");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "12313123131", "Rua Motinha 34", "Acer");
insert into Fornecedor (CNPJforn, telForn, endForn, nomeForn) values (0, "12313123143", "Rua Carrinho 232", "Kingston");


insert into Componentes (codComp, descComp, valorUnit) values (0, "Memoria Ram 8g", 250);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Memoria Ram 16g", 500);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Processador I5", 2999);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Processador I9", 10000);
insert into Componentes (codComp, descComp, valorUnit) values (0, "HD 1T", 300);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Placa Mãe", 400);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Placa de Video gtx1050", 1500);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Placa de Video rtx3080", 8000);
insert into Componentes (codComp, descComp, valorUnit) values (0, "Cooler", 50);
insert into Componentes (codComp, descComp, valorUnit) values (0, "HD 3T", 1500);


insert into ModeloD (codModDM, codCompDM) values (10, 1);
insert into ModeloD (codModDM, codCompDM) values (9, 9);
insert into ModeloD (codModDM, codCompDM) values (1, 8);
insert into ModeloD (codModDM, codCompDM) values (2, 7);
insert into ModeloD (codModDM, codCompDM) values (4, 4);
insert into ModeloD (codModDM, codCompDM) values (5, 5);
insert into ModeloD (codModDM, codCompDM) values (7, 6);
insert into ModeloD (codModDM, codCompDM) values (3, 3);
insert into ModeloD (codModDM, codCompDM) values (6, 2);
insert into ModeloD (codModDM, codCompDM) values (8, 10);


insert into FornecedorD (codCompDF, CNPJfornDF) values (1, 10);
insert into FornecedorD (codCompDF, CNPJfornDF) values (2, 9);
insert into FornecedorD (codCompDF, CNPJfornDF) values (3, 8);
insert into FornecedorD (codCompDF, CNPJfornDF) values (4, 7);
insert into FornecedorD (codCompDF, CNPJfornDF) values (5, 6);
insert into FornecedorD (codCompDF, CNPJfornDF) values (6, 5);
insert into FornecedorD (codCompDF, CNPJfornDF) values (7, 4);
insert into FornecedorD (codCompDF, CNPJfornDF) values (8, 3);
insert into FornecedorD (codCompDF, CNPJfornDF) values (9, 2);
insert into FornecedorD (codCompDF, CNPJfornDF) values (10, 1);

select * from Modelo;
select * from Componentes;
select * from Fornecedor;
select * from FornecedorD;
select * from ModeloD;

update Modelo 
set nomeMod = "AlienCoreV2"
where codMod = 1;

update Modelo
set nomeMod = "MonsterV2"
where codMod = 2;

update Componentes 
set valorUnit = 10000
where codComp = 8;

update Componentes 
set valorUnit = 300
where codComp = 1;

update Fornecedor
set endForn = "Rua Tblau 1000", nomeForn = "RazeCroma"
where  CNPJforn = 1;

delete from ModeloD
where codCompDM = 9; 

delete from ModeloD
where codCompDM = 10;

delete from FornecedorD
where CNPJfornDF = 5; 

delete from Fornecedor
where CNPJforn = 4;

delete from FornecedorD
where CNPJfornDF = 2;

select * from Modelo;
select * from Componentes;
select * from Fornecedor;
select * from FornecedorD;
select * from ModeloD;




