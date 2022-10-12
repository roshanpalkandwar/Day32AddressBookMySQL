
-------------------uc1----------------------
create Database AddressBookServiceDB

use AddressBookServiceDB
--------------------uc2-------------------------
CREATE TABLE AddressBook
(
firstName varchar(20) not null,
lastName varChar(20) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int not null,
phoneNumber varchar(12),
email varchar(20) not null
)
drop table AddressBook

select*
from AddressBook
------------------------uc3--------------------------------
insert into AddressBook (firstName,lastName,address,city,state,zip,phoneNumber,email) values('Anand','ubale','Pawansutnagar','Mehkar','Maharastra','443301','7888289884','au11@gmail.com')
insert into AddressBook values('mayur','kalekar','Pawansutnagar','Mehkar','Maharastra','443301','1234567890','mkalekar25@gmail.com');
insert into AddressBook values('Sandeep','kalekar','Pawansutnagar','Mehkar','Maharastra','443301','1234567890','mkalekar25@gmail.com');

-----------------------------uc4-----------------------------------------------
update AddressBook set city='buldana' where firstName = 'mayur'
update AddressBook set address='ekataNagar' where firstName = 'mayur'

----------------------------------------uc5-------------------------------------------

delete AddressBook where firstName ='Sandeep'

-------------------------------------uc6-----------------------------------------

select city,state from AddressBook;

----------------------------------------uc7-----------------------------------------------

select COUNT(city) from AddressBook;
select COUNT(state) from AddressBook;

------------------------------------uc8-------------------------------------------------------

select * from AddressBook
where city = 'Mehkar'
order by (firstName);

-------------------------------uc9--------------------------------------------------------

alter table AddressBook add Name varchar(255),Type varchar(255)

update AddressBook set Name='Anand' where firstName ='Anand'
update AddressBook set Name='Mayur' where firstName ='mayur'

update AddressBook set Type ='Family' where firstName='Anand'
update AddressBook set Type ='Professional' where firstName='Mayur'

--------------------------------------uc10----------------------------------------------------
select count(type) 
from AddressBook


select Type, count(*) as TypeCount 
from AddressBook
group by Type;

--------------------------------uc11-------------------------------------------------------------

insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email,Name,Type) values('Sneha','Belkar','Gov hospital','kolhapur','maharastra','443301','9234927342','sneha@gmail.com','Sneha','Friend');
insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email,Name,Type) values('Sneha','Belkar','Gov hospital','kolhapur','maharastra','443301','9234927342','sneha@gmail.com','Sneha','Family');

delete AddressBook where firstName ='Sneha'