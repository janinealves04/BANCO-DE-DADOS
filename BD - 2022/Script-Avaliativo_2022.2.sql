
create table pessoa ( 
idpessoa int not null auto_increment primary key,
nomepessoa varchar(100),
tipopessoa char,
cpf_cnpj  varchar(20) unique not null,
endereco_idendereco int
); 
alter table pessoa add constraint fk_pessoa_endereco foreign key (endereco_idendereco)
references endereco (idendereco);

create table conta (
idconta int not null auto_increment,
descrição varchar (100),
valor float not null,
dtvencimento date,
paga boolean not null,
tipodeconta char,
pessoa_idpessoa int,
primary key (idconta)
);
alter table conta add constraint fk_pessoa_conta foreign key (pessoa_idpessoa)
references pessoa (idpessoa);

create table parcela (
idparcela int not null auto_increment,
conta_idconta int,
valor float not null,
paga boolean not null,
datavencimento date,
primary key (idparcela)
);
alter table parcela add constraint fk_parcela_conta foreign key (conta_idconta)
references conta (idconta);

create table endereco (
idendereço int not null auto_increment primary key,
rua varchar (100),
bairro varchar (100),
cidade varchar (100),
estado varchar (2),
cep int
);