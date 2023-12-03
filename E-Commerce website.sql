CREATE Database  ECommerce ;

CREATE TABLE supplier (
SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL
);
CREATE TABLE customer(
CUS_ID int NOT NULL,
CUS_NAME varchar(20) NOT NULL,
CUS_CITY varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_GENDER char,
primary key(CUS_ID)
);
CREATE TABLE category(
CAT_ID int NOT NULL,
CAT_NAME varchar(20) NOT NULL,
primary key(CAT_ID)
);
CREATE TABLE product(
PRO_ID int NOT NULL,
PRO_NAME varchar(20) NOT NULL,
PRO_DESCR varchar(50) ,
CAT_ID int NOT NULL,
primary key(PRO_ID),
foreign key(CAT_ID) references  category (CAT_ID)
);
CREATE TABLE supplier_pricing(
PRIC_ID int NOT NULL,
PRO_ID int NOT NULL,
SUPP_ID int NOT NULL,
SUPP_PRICNG int NOT NULL,
primary key(PRIC_ID),
foreign key(PRO_ID) references PRODUCT (PRO_ID),
foreign key(SUPP_ID) references SUPPLIER(SUPP_ID)
);
CREATE TABLE orders (
ORD_ID int ,
ORD_AMOUNT int NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID int, 
PRIC_ID int, 
primary key (ORD_ID),
foreign key (PRIC_ID) references supplier_pricing (PRIC_ID),
foreign key  (CUS_ID) references customer (CUS_ID)
);
CREATE TABLE rating(
RAT_ID int,
ORD_ID int,
RAT_RATSTARS int NOT NULL,
primary key (RAT_ID),
foreign key (ORD_ID) references orders(ORD_ID)
);

insert into SUPPLIER values(1,"Rajesh Retails", "Delhi", '1234567890');
insert into SUPPLIER values(2,"Appario Ltd.", "Mumbai",'2589631470');
insert into SUPPLIER values(3,"Knome products","Banglore",'9785462315');
insert into SUPPLIER values(4,"Bansal Retails","Kochi", '8975463285');
insert into SUPPLIER values(5,"Mittal Ltd.","Lucknow",'7898456532');   

      
insert into customer values (1,"AAKASH", "DELHI",'9999999999','M');
insert into customer values (2,"AMAN", " NOIDA", '9785463215', 'M');
insert into customer values (3,"NEHA ","MUMBAI " ,'9999999999' ,'F');
insert into customer values (4, "MEGHA", "KOLKATA", '9994562399', 'F');
insert into customer values (5,"PULKIT","LUCKNOW",'7895999999' ,'M');

insert into category values(1,"BOOKS");
insert into category values(2,"GAMES");
insert into category values(3,"GROCERIES");
insert into category values(4,"ELECTRONICS");
insert into category values(5,"CLOTHES");

insert into product values(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
insert into product values(2,"TSHIRT","SIZE-L with Black,Blue and White variations",5);
insert into product values(3,"ROG LAPTOP","Windows10 with 15inch screen,i7 processor,1TBSSD",4);
insert into product values(4,"OATS","Highly Nutritious from Nestle",3);
insert into product values(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
insert into product values(6,"MILK","1L Toned MIlk",3);
insert into product values(7,"Boat Earphones","1.5Meter long Dolby Atmos",4);
insert into product values(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
insert into product values(9,"Project IGI","compatible with windows 7 and above",2);
insert into product values(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
insert into product values(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
insert into product values(12,"Train Your Brain","By Shireen Stephen",1);

select*FROM PRODUCT;
ALTER table product modify column PRO_DESCR varchar(120);

insert into supplier_pricing values(1,1,2,1500);
insert into supplier_pricing values(1,1,2,1500);
insert into supplier_pricing values(2,3,5,30000);
insert into supplier_pricing values(3,5,1,3000);
insert into supplier_pricing values(4,2,3 ,2500);
insert into supplier_pricing values(5,4,1,1000);
insert into supplier_pricing values(6,1, 2,780);
insert into supplier_pricing values(7,12, 4,789);
insert into supplier_pricing values(8,3,1,31000);
insert into supplier_pricing values(9,1,5,1450);
insert into supplier_pricing values(10,4,2,999);
insert into supplier_pricing values(11,7,3,549);
insert into supplier_pricing values(12,7,4,529);
insert into supplier_pricing values(13,6,2,105);
insert into supplier_pricing values(14,6,1,99);
insert into supplier_pricing values(15,2,5,2999);
insert into supplier_pricing values(16,5,2,2999);

INSERT INTO orders values(101,1500,"2021-10-06",2,1);
INSERT INTO orders values(102,1000,"2021-10-12",3,5);
INSERT INTO orders values(103,30000,"2021-09-16",5,2);
INSERT INTO orders values(104,1500,"2021-10-05",1,1);
INSERT INTO orders values(105,3000,"2021-08-16",4,3);
INSERT INTO orders values(106,1450,"2021-08-18",1,9);
INSERT INTO orders values(107,789,"2021-09-01",3,7);
INSERT INTO orders values(108,780,"2021-09-07",5,6);
INSERT INTO orders values(109,3000,"2021-09-10",5,3);
INSERT INTO orders values(110,2500,"2021-09-10" ,2,4);
INSERT INTO orders values(111,1000,"2021-09-15",4,5);
INSERT INTO orders values(112,789,"2021-09-16",4,7);
INSERT INTO orders values(113,31000,"2021-09-16",1,8);
INSERT INTO orders values(114,1000,"2021-09-16",3,5);
INSERT INTO orders values(115,3000,"2021-09-16",5,3);
INSERT INTO orders values(116,99,"2021-09-17",2,14);

insert into rating values(1,101,4);
insert into rating values(2,102,3);
insert into rating values(3,103,1);
insert into rating values(4,104,2);
insert into rating values(5,105,4);
insert into rating values(6,106,3);
insert into rating values(7,107,4);
insert into rating values(8,108,4);
insert into rating values(9,109,3);
insert into rating values(10,110,5);
insert into rating values(11,111,3);
insert into rating values(12,112,4);
insert into rating values(13,113,2);
insert into rating values(14,114,1);
insert into rating values(15,115,1);
insert into rating values(16,116,0);

select* from supplier;
select* from customer;
select* from category;
select* from orders;
select* from product;
select* from supplier_pricing;
select* from rating;

----------

select s.*, v.totalProducts
from supplier s
inner join(
select sp.supp_id, count(sp.pro_id)as totalproducts
from supplier_pricing sp
group by sp.supp_id
) as v on v.SUPP_ID=s.supp_id
where v.totalproducts > 1;

---------
select 
c.CUS_GENDER , count(c.CUS_GENDER) as count
-- c.CUS_GENDER, count (c.CUS_GENDER) as count --
from customer c
inner join
(
   select c.cus_id as customerId 
   from customer c
   inner join orders o on o.cus_id=c.cus_id
   where o.ORD_AMOUNT>=3000
   group by c.cus_id
) as v on v.customerId = c.cus_id
group by c.CUS_GENDER;
-------------------

select p.pro_name, o.*
from orders o
inner join customer c on c.CUS_ID = o.CUS_ID
inner join supplier_pricing sp on sp.PRIC_ID=o.PRIC_ID
inner join product p on p.PRO_ID=sp.PRO_ID
where c.CUS_ID=2;


----------

select c.CAT_NAME, min(vv.min_price) as min_price
from category c
inner join
(
select p.*, v.min_price
  from product p
inner join(
  select sp.PRO_ID,min(sp.SUPP_PRIC) as min_Price
  from supplier_pricing sp
  group by sp.PRO_ID
)as v on p.PRO_ID=v.PRO_ID
) as vv on vv.CAT_ID = c.CAT_ID
group by c.CAT_ID;
-------------

select p.pro_id, p.pro_name
from orders o 
inner join supplier_pricing sp on sp.PRIC_ID= o.PRIC_ID
inner join product p on p.PRO_ID = sp.PRO_ID
where o.ORD_DATE> '2021-10-05';

-------------------------------------------
SELECT * FROM customer c
where c.CUS_NAME LIKE  '%A'
OR c.CUS_NAME like 'A%';

-----------------------
  select 
report.SUPP_ID, report.SUPP_NAME,
case 

when report.average=5 then 'Excellent Service'
when report.average>4 then  'Good Service'
when report.average>2 then  'Average Service'
else 'Poor Service'

end as Type_Of_Sevice

from(
select s.* , final.average
from supplier s
inner join
(

select vv.SUPP_ID, avg(vv.RAT_RATSTARS) as average 
from 
(
select sp.PRIC_ID, sp.PRO_ID, sp.SUPP_ID, sp.SUPP_PRIC, v.ORD_ID, v.RAT_RATSTARS 
from supplier_pricing sp
 inner join  (
    select o.ORD_ID, o.PRIC_ID,r.RAT_RATSTARS
    from orders o
    inner join rating r on r.ORD_ID=o.ORD_ID
  ) as v on sp.PRIC_ID = v.PRIC_ID
)as vv
group by vv.SUPP_ID
)as final on final.SUPP_ID = s.SUPP_ID
)as report
