-- find all products
select * from bestbuy.products;

-- find all products that cost $1400
select * from bestbuy.products
where Price = 1400.00;
 
-- find all products that cost $11.99 or $13.99
select * from bestbuy.products
where Price = 11.99 or Price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
select * from bestbuy.products
where not Price = 11.99;

-- find all products and sort them by price from greatest to least
select * from bestbuy.products
order by Price desc;

-- find all employees who don't have a middle initial
select * from bestbuy.employees
where MiddleInitial is null;

-- find distinct product prices
select distinct bestbuy.products.Price
from bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
select * from bestbuy.employees
where FirstName like 'j%';

-- find all Macbooks
select * from bestbuy.products
Where Name = 'Macbook';

-- find all products that are on sale
select * from bestbuy.products
where OnSale = 1;

-- find the average price of all products
select avg(products.Price) from bestbuy.products;

-- find all Geek Squad employees who don't have a middle initial
select * from bestbuy.employees
where MiddleInitial is null and Title = 'Geek Squad';

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from bestbuy.products
where StockLevel between 500 and 1200
order by Price;
