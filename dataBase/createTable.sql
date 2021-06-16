
drop table tb_lanches cascade

INSERT INTO tb_lanches(nm_lanche,preco,descr,Qte,caminhoImg)
VALUES
('Mc Feliz', 25.00,'lanche feliz ',99, './Img/download.jpg'),
('Subway',25.00,'metro lanche',99,'./Img/subwayLanche.jpg'),
('Lanche',25.00,'lanche lanche test',99,'./Img/lanche.jpg');

select * from tb_lanches

drop table tb_pao;
drop table tb_molho;
drop table tb_hambuger;
drop table tb_salada;
drop table tb_queijo;
drop table tb_condimentos;

CREATE TABLE tb_lanches(
id_lanche		SERIAL NOT NULL,
nm_lanche		VARCHAR(60),
preco			float,
descr			Varchar(255),
Qte			integer,
caminhoImg		VARCHAR(60),
CONSTRAINT pk_tb_lanches_id_lanche PRIMARY KEY (id_lanche));

create table tb_pao(
id_pao			SERIAL NOT NULL,
qte			integer,
nm_pao			varchar(60),
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_pao primary key (id_pao));

create table tb_molho(
id_molho		SERIAL NOT NULL,
nm_molho		varchar(60),
qte			integer,
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_molho primary key (id_molho));

create table tb_hambuger(
id_hambuger		SERIAL NOT NULL,
qte			integer,
nm_hambuger		varchar(60),
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_ham primary key (id_hambuger));

create table tb_salada(
id_salada		SERIAL NOT NULL,
qte 			integer,
nm_salada		varchar(60),
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_salada primary key (id_salada));

create table tb_queijo(
id_queijo		SERIAL NOT NULL,
qte			integer,
nm_queijo		varchar(60),
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_que primary key (id_queijo));

create table tb_condimentos(
id_cond			SERIAL NOT NULL,
qte			integer,
nm_cond			varchar(60),
preco			float,
descr			varchar(255),
caminhoImg		varchar(60),
constraint pk_tb_pao_id_cond primary key (id_cond));

drop table tb_lanche_criados

select * from tb_pao

select * from tb_lanche_criados

drop table tb_lanche_criados cascade

create table tb_lanche_criados(
id_lc_criado		SERIAL NOT NULL,
id_pao			integer,
qtePao			integer,
id_molho		integer,
qtemolho		integer,
id_hambuger		integer,
qtehambuger		integer,
id_salada		integer,
qtesalada		integer,
id_queijo		integer,
qtequeijo		integer,
id_cond			integer,
qtecond			integer,
constraint pk_tb_lanche_criados_id_lc_cr primary key(id_lc_criado),
CONSTRAINT fk_tb_lanche_criados_id_pao FOREIGN KEY(id_pao) REFERENCES tb_pao(id_pao),
CONSTRAINT fk_tb_lanche_criados_id_molho FOREIGN KEY(id_molho) REFERENCES tb_molho(id_molho),
CONSTRAINT fk_tb_lanche_criados_id_hambuger FOREIGN KEY(id_hambuger) REFERENCES tb_hambuger(id_hambuger),
CONSTRAINT fk_tb_lanche_criados_id_salada FOREIGN KEY(id_salada) REFERENCES tb_salada(id_salada),
CONSTRAINT fk_tb_lanche_criados_id_queijo FOREIGN KEY(id_queijo) REFERENCES tb_queijo(id_queijo),
CONSTRAINT fk_tb_lanche_criados_id_cond FOREIGN KEY(id_cond) REFERENCES tb_condimentos(id_cond));


CREATE TABLE tb_card_credit(
id_cliente		integer,
num_cred		integer,
cod_seg			integer,
venc_cart		varchar(20),
CONSTRAINT pk_tb_card_credit_num_cred PRIMARY KEY(num_cred),
CONSTRAINT fk_tb_card_credit_id_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente));

select * from tb_cliente
drop table tb_cliente cascade

CREATE TABLE tb_cliente(
id_cliente		SERIAL NOT NULL,
nm_cliente		varchar(120),
apelido			varchar(60),
senha			Varchar(160),
cpf			varchar(25),
rua			varchar(60),
numero			varchar(5),
complemento		varchar(15),
bairro			varchar(60),
cidade			varchar(60),
cep			integer,
CONSTRAINT pk_tb_cliente_id_cliente PRIMARY KEY(id_cliente));

select * from tb_cliente
drop table tb_venda

CREATE TABLE tb_venda(
id_venda		SERIAL NOT NULL,
id_cliente     		integer,
id_lc_criado		integer,
id_lanches		integer,
data_venda		varchar(60),
hora			varchar(60),
qte_itens		integer,
CONSTRAINT pk_tb_venda_id_venda PRIMARY KEY(id_venda),
CONSTRAINT fk_tb_venda_id_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente),
CONSTRAINT fk_tb_venda_id_lc_criado FOREIGN KEY(id_lc_criado) REFERENCES tb_lanche_criados(id_lc_criado),
CONSTRAINT fk_tb_venda_id_lanches FOREIGN KEY(id_lanches) REFERENCES tb_lanches(id_lanche));
