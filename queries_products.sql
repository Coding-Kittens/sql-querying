
INSERT INTO products(name, price, can_be_returned)
VALUES
('chair',44.00,false),
('stool',25.99,true),
('table',124.00,false); --query  1,2,3

SELECT * FROM products; --query 4

SELECT name FROM products; --query 5

SELECT name,price FROM products; --query 6

INSERT INTO products(name, price, can_be_returned)
VALUES ('Blanket',30.59,false); --query 7
  

SELECT * FROM products WHERE can_be_returned = true;--query 8

SELECT * FROM products WHERE price < 44.00; --query 9

SELECT * FROM products WHERE price  BETWEEN 22.50 AND 99.99;--query 10

UPDATE products SET price = price-20;--query 11

DELETE FROM products WHERE price < 25;--query 12

UPDATE products SET price = price+20;--query 13

UPDATE products SET can_be_returned = true;--query 14
