create database Zomato;
use Zomato;

DROP TABLE IF EXISTS zomato;

CREATE TABLE zomato(
    name VARCHAR(150),
    online_order VARCHAR(10),
    book_table VARCHAR(10),
    rate VARCHAR(20),
    votes INT,
    approx_cost_for_two VARCHAR(20),
    listed_type VARCHAR(50)
);
 select * from zomato;
 
 Alter table zomato1 rename zomato;
 
 show tables;
 
 -- Total Records
 select count(*) as total_restaurants
 from zomato;
 
 -- dataset-- 
 select *from zomato
 limit10;
 
 -- Data Cleaning
 select distinct rate 
 from zomato;
 
 select distinct online_order 
 from zomato;
 
 select distinct book_table
 from zomato;

Select distinct `listed_in(type)`
FROM zomato;

-- Duplicate Restaurants
select name , count(*) as total
from zomato
group by name 
having count(*) > 1;

-- Total Restaurants
select count(*)
from zomato;

-- Average Votes
select avg(votes)
from zomato;

-- max
select max(votes)
from zomato;

-- min
Select MIN(votes)
FROM zomato;

-- Average Cost
select avg('approx_cost(for two people)')
from zomato;

-- Online Order accept
select online_order,
count(*) as total_restaurants
from zomato
group by online_order;

-- Top 10 Restaurants by Votes
select name,votes from zomato
order by votes desc
limit 10;

-- Highest Rated Restaurants
select name,rate from zomato
order by rate Desc
limit 10;

-- Average Votes
select avg(votes) as average_votes
from zomato;

-- Maximum Votes
select max(votes) as maximum_votes
from zomato;

-- Minimum Votes
select min(votes) as minimum_votes
from zomato;

-- Restaurants having Rating greater than 4
select name, rate from zomato
where rate >4;

-- Restaurants having more than 500 Votes

select name,votes 
from zomato
where votes > 2000;

-- Restaurants with Online Order = Yes
select * from zomato
where online_order ='yes';

-- Buffet Restaurants
SELECT *
FROM zomato
WHERE `listed_in(type)` = 'Buffet';

-- Count Restaurants by Rating

select rate,count(*) as total
from zomato
group by rate 
order by rate asc;

-- Top 5 Restaurant Types by Popularity (Votes)

select 'listed_in(type)',
sum(votes) as total_votes
from zomato
group by 'listed_in(type)'
order by total_votes desc
limit 5;

-- Online Order vs Average Votes
select online_order,
avg(votes) as average_votes 
from zomato
group by online_order;
