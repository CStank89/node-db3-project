-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select
    p.productname as 'product name',
    c.categoryname as 'category name'
from product as p
join category as c
    on p.CategoryId = c.id


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select
    Id, 
    orderDate, 
    s.CompanyName 
from [order] as o 
join shipper as s
    on o.ShipVia = s.Id
where orderDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select 
    orderId, 
    p.ProductName, 
    quantity
from orderDetail
join product as p 
    on orderdetail.ProductId = p.Id
where orderId = 10251
order by product.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select 
    Id, 
    c.CompanyName, 
    e.LastName 
from [order]
join Customer as c 
    on [Order].CustomerId = c.Id 
join Employee as e 
    on [Order].EmployeeId = e.Id
;