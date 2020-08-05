create table person (
    id serial primary key,
    name VARCHAR(200) not null,
    age int,
    height_cm int,
    city VARCHAR(200),
    favorite_color text
    )

insert into person (name, age, height_cm, city, favorite_color)
    VALUES
    ('Jeff', 29, 100, 'Townsville', 'red'),
    ('Bob', 20, 110, 'Cityspace', 'blue'),
    ('George', 22, 80, 'Hovlespace', 'green'),
    ('Famantha', 18, 200, 'Metropolis', 'black'),
    ('Cynthia', 31, 100, 'Suburbahood', 'orange');

select * from person order by height_cm DESC;

select * from person order by height_cm ASC;

select * from person order by age DESC;

select * from person where age > 20;

select * from person where age = 18;

select * from person where age < 20 or age > 30;

select * from person where age != 27;

select * from person where favorite_color != 'red' and favorite_color != 'blue';

select * from person where favorite_color = 'orange' or favorite_color = 'green';

select * from person where favorite_color in ('orange', 'green', 'blue')

select * from person where favorite_color in ('yellow', 'purple')

create table orders (
    order_id serial primary key,
    person_id int not null,
    product_name varchar(200),
    product_price int,
    quantity int
)

insert into orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'thinger', 1, 2),
(2, 'thingy', 4, 8),
(1, 'that thang', 1, 10),
(3, 'Thangs-giving', 5, 3),
(1, 'Thunk', 7, 7),

select * from orders;

select sum(quantity) from orders;

select quantity * product_price from orders;

select sum(quantity * product_price) from orders where person_id = 0;

insert into artist (name) VALUES
    ('Jeff'), ('George'), ('Janette');

select * from artist order by name desc limit 10;

select * from artist order by name asc limit 5;

select * from artist where name like ('Black%');

select * from artist where name like ('%Black%');

-- employees

select first_name, last_name from employee;

select * from employee order by birth_date desc limit 1;
SELECT MAX(birth_date) from employee;

select * from employee order by birth_date asc limit 1;
SELECT MIN(birth_date) from employee;

select * from employee where reports_to = 2;

select * from employee where city = 'Lethbridge';

-- 
-- invoice

select * from invoice where billing_country = 'USA';

select MAX(total) from invoice;

select MIN(total) from invoice;

select * from invoice where total > 5;

select count(*) from invoice where billing_state in ('CA', 'TX', 'AZ');

select AVG(total) from invoice;

select Sum(total) from invoice;