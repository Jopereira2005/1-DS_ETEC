
create database XYZ_Consultores_Associados;

use XYZ_Consultores_Associados;

create table Chamado (
NumChamado int (11) primary key auto_increment,
CodAcao int (11) not null,
resumo varchar (256)
);

create table Acao (
CodAcao int (11) primary key auto_increment,
CodFunc int (11) not null
);

create table Funcionario (
CodFunc int (11) primary key auto_increment,
NomeFunc varchar (50) not null,
CPF char (11) unique not null
);

create table Problemas (
CodProb int (11) primary key auto_increment,
NomeProb varchar (50) not null,
LocalDoProb varchar (50) not null
);

create table Mensagem ( 
CodMsg int (11) primary Key auto_increment,
OrigemMsg varchar (50) not null
);

create table Problema_Detalhe ( 
CodProdbProbD int (11) not null,
CodMsgProbD int (11) not null,
primary key (CodProdbProbD,CodMsgProbD)
);

create table Software (
CodSoft int (11) primary key not null auto_increment,
NomeSoft varchar (30) not null,	
peso decimal (5,2) not null,	
VersaoSoft varchar (15) not null
);

create table Software_Detalhe ( 
CodProbSoftD int (11) not null,
CodSoftSoftD int (11) not null,
primary key (CodProbSoftD,CodSoftSoftD)
);

alter table Chamado
add constraint
fk_chamado_tem_cod_acao
foreign key (CodAcao)
references Acao(CodAcao);

alter table Acao
add constraint 
fk_acao_tem_funcionario
foreign key (CodFunc)
references Funcionario(CodFunc);

alter table Chamado
add constraint
fk_Chamado_tem_Acao
foreign key (CodAcao)
references Acao(CodAcao);

alter table Acao
add constraint 
fk_Acao_tem_Funcionario
foreign key (CodFunc)
references Funcionario(CodFunc);

alter table Problema_Detalhe
add constraint fk_Problema_tem_Problema_Detalhe
foreign key (CodProdbProbD)
references Problemas(CodProb);

alter table Problema_Detalhe
add constraint fk_Mensagem_tem_Problema_Detalhe
foreign key (CodMsgProbD)
references Mensagem(CodMsg);

alter table Software_Detalhe
add constraint fk_Problema_tem_Softaware_Detalhe
foreign key (CodProbSoftD)
references Problemas(CodProb);

alter table Software_Detalhe
add constraint fk_Mensagem_tem_Problema_Detalhe
foreign key (CodSoftSoftD)
references Softaware(CodSoft);



insert into Problemas (CodProb, NomeProb,LocalDoProb) values (0, "423", "C:\WIN32");
insert into Problemas (CodProb, NomeProb, LocalDoProb) values (0, "454", "C:\DEMO");
insert into Problemas (CodProb, NomeProb, LocalDoProb) values (0, "432", "E:\WIN32");
insert into Problemas (CodProb, NomeProb, LocalDoProb) values (0, "454", "C:\Carlão");
insert into Problemas (CodProb, NomeProb, LocalDoProb) values (0, "484", "C:\Bla");



insert into Mensagem (CodMsg, OrigemMsg) values (0, "C:\WIN32");
insert into Mensagem (CodMsg, OrigemMsg) values (0, "C:\blou");
insert into Mensagem (CodMsg, OrigemMsg) values (0, "C:\Plin");
insert into Mensagem (CodMsg, OrigemMsg) values (0, "C:\Plau");
insert into Mensagem (CodMsg, OrigemMsg) values (0, "C:\Carlão");



insert into Software (CodSoft, NomeSoft, peso, VersaoSoft) values (0, "Windos", 100, "0lPO-12");
insert into Software (CodSoft, NomeSoft, peso, VersaoSoft) values (0, "Linix", 20, "0832-P");
insert into Software (CodSoft, NomeSoft, peso, VersaoSoft) values (0, "Mec", 33, "2,O1");
insert into Software (CodSoft, NomeSoft, peso, VersaoSoft) values (0, "Windos23",99, "0V2");
insert into Software (CodSoft, NomeSoft, peso, VersaoSoft) values (0, "Mec32", 234, "V6");



insert into Funcionario (CodFunc, NomeFunc, CPF) values(0, "Sérgio M.", "01234567891");
insert into Funcionario (CodFunc, NomeFunc, CPF) values(0, "Roberto R.", "01234567892");
insert into Funcionario (CodFunc, NomeFunc, CPF) values(0, "Beto S.", "01234567893");
insert into Funcionario (CodFunc, NomeFunc, CPF) values(0, "Pedro N.", "01234567894");
insert into Funcionario (CodFunc, NomeFunc, CPF) values(0, "Paulo P.", "01234567895");



insert into Acao (CodAcao, CodFunc) values (0, 5);
insert into Acao (CodAcao, CodFunc) values (0, 4);
insert into Acao (CodAcao, CodFunc) values (0, 3);
insert into Acao (CodAcao, CodFunc) values (0, 2);
insert into Acao (CodAcao, CodFunc) values (0, 1);



insert into Chamado (NumChamado, CodAcao, resumo) values (0, 1, "Deu um poblema aqui meo");
insert into Chamado (NumChamado, CodAcao, resumo) values (0, 5, "Deu um poblema aqui meo");
insert into Chamado (NumChamado, CodAcao, resumo) values (0, 2, "Deu um poblema aqui meo");
insert into Chamado (NumChamado, CodAcao, resumo) values (0, 4, "Deu um poblema aqui meo");
insert into Chamado (NumChamado, CodAcao, resumo) values (0, 3, "Deu um poblema aqui meo");



insert into Problema_Detalhe (CodProdbProbD, CodMsgProbD) values (5, 1);
insert into Problema_Detalhe (CodProdbProbD, CodMsgProbD) values (4, 5);
insert into Problema_Detalhe (CodProdbProbD, CodMsgProbD) values (3, 2);
insert into Problema_Detalhe (CodProdbProbD, CodMsgProbD) values (2, 4);
insert into Problema_Detalhe (CodProdbProbD, CodMsgProbD) values (1, 3);



insert into Software_Detalhe (CodProbSoftD, CodSoftSoftD) values (5, 1);
insert into Software_Detalhe (CodProbSoftD, CodSoftSoftD) values (4, 5);
insert into Software_Detalhe (CodProbSoftD, CodSoftSoftD) values (3, 2);
insert into Software_Detalhe (CodProbSoftD, CodSoftSoftD) values (2, 4);
insert into Software_Detalhe (CodProbSoftD, CodSoftSoftD) values (1, 3);

show tables;

select * from Problemas;
select * from Mensagem;
select * from Software;
select * from Funcionario;
select * from Acao;
select * from Chamado;
select * from Problema_Detalhe;
select * from Software_Detalhe;
