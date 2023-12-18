
drop database Assignment_08
create database Assignment_08
use Assignment_08
create table Products
(PId char(10) primary key,
PName nvarchar (50) not null,
PPrice float not null,
MfgDate date not null,
ExpDate date not null)
insert into Products values ('P0001','Mobile',15000.90,'01/02/2018','05/08/2022')
insert into Products values ('P0002','Laptop',45000.90,'06/11/2014','03/07/2018')
insert into Products values ('P0003','Smart-Watch',5000.50,'02/02/2019','04/06/2022')
insert into Products values ('P0004','Mobile',25000.90,'10/11/2022','09/10/2025')
insert into Products values ('P0005','Bluetooth',10000.50,'11/08/2016','05/08/2019')
insert into Products values ('P0006','Laptop',65000.90,'09/02/2022','02/04/2025')
insert into Products values ('P0007','Mobile',28000.00,'01/05/2022','01/09/2026')
insert into Products values ('P0008','Smart-Watch',1000.90,'09/11/2019','01/07/2023')
insert into Products values ('P0009','Mobile',35000.90,'01/02/2020','04/09/2024')
insert into Products values ('P0000','Laptop',150000.90,'02/02/2023','11/09/2025')
select * from Products
