SHOW ENGINES;
SHOW TABLES;
Use belajar_mysql;
create table barang
(
kode INT,
nama varchar(100),
harga int,
jumlah int
) Engine = InnoDB;

Describe barang;

alter table barang
add column deskripsi text;

alter table barang
add column salah text;


alter table barang
drop column salah;

alter table barang
modify nama varchar(200);

alter table barang
modify kode int not null;

alter table barang
modify nama varchar(200) not null;

describe barang;

alter table barang
modify jumlah int not null default 0;

alter table barang
modify harga int not null default 0;

alter table barang
add waktu_dibuat timestamp not null default current_timestamp;

insert into barang (kode,nama) values (1,'Apel');

select * from barang;

truncate barang;
drop table barang;

create table products
(
id varchar(10) not null,
name varchar(100) not null,
description text,
price int unsigned not null,
quantity int unsigned not null,
created_at timestamp not null default current_timestamp
);

describe products;

insert into products (id, name, price, quantity)
values ('P0001', 'Mie Ayam Original', 15000, 100);

insert into products (id,name,description,price,quantity)
values ('P0002','Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu',20000,100);

alter table products
modify quantity int unsigned not null default 0;

select * from products;