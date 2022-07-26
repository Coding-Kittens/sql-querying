
SELECT * FROM analytics WHERE id = 1880;--query 1

SELECT id,app_name FROM analytics WHERE last_updated = '2018-08-01'; --query 2

SELECT category,COUNT(*) FROM analytics GROUP BY category;--query 3

SELECT app_name,reviews FROM analytics ORDER BY reviews desc LIMIT 5;--query 4

SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;--query 5

SELECT category,AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg_rating desc;--query 6

SELECT app_name,price,rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;--query 7

SELECT * FROM analytics WHERE min_installs <= 50 AND rating > 0 ORDER BY rating desc;--query 8

SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;--query 9

SELECT * FROM analytics WHERE price BETWEEN 0.10 AND 1 ORDER BY reviews desc LIMIT 10;--query 10

SELECT * FROM analytics ORDER BY last_updated LIMIT 1;--query 11

SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);--query 12

SELECT COUNT(reviews) FROM analytics;--query 13

SELECT category,COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;--query 14

SELECT app_name,reviews,min_installs,(min_installs/reviews)AS proportion
FROM analytics WHERE min_installs >= 100000
AND min_installs/reviews = (SELECT MAX(min_installs/reviews)FROM analytics); --query 15
