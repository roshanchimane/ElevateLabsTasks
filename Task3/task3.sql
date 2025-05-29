create database ElevateLabs;
use elevatelabs;
/*Use SELECT, WHERE, ORDER BY, GROUP BY*/

SELECT * FROM info;

SELECT * FROM info
WHERE category="Sports";

SELECT count(*) FROM info
WHERE price>400;

SELECT * FROM info
WHERE category="Sports"
ORDER BY Final_Price;

SELECT category,count(*) as transactions FROM info
group by category
order by transactions;

SELECT User_ID,Category
FROM info
WHERE Category IN (
    SELECT Category
    FROM info
    WHERE Discount>20
);

select sum(price) as total_sum
from info;

select sum(final_price ) as TotalSum
from info;

select avg(price) as average_totalPrice
from info;

/* VIEWS */

CREATE VIEW useful_info AS
select
	category,
    price,
    discount,
    final_price,
    payment_method
    
from info;

select * from useful_info;
