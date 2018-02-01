/*BETWEEN Statement*/


SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;/*This will show the list of all the records with price list between 10 and 20*/

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;/*This will show the list of all the records with price list not between 10 and 20*/

SELECT * FROM Products
WHERE (Price BETWEEN 10 AND 20)
AND NOT CategoryID IN (1,2,3);
/*This will select the prodeucts from the DB within range 10 to 20. 
Then again filtering it in the range of CategoryID 1, 2 and 3.Cool!*/

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*This will select the list of all the ProductName within the alphabetical range of C and M
i.e the first letters of the ProductName. Then we have ordered the list generated by the ProductName*/

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*This will select the list of all the ProductName not within the alphabetical range of C and M 
i.e the first letters of the ProductName. Then we have ordered the list generated by the ProductName*/

SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/04/1996# AND #07/09/1996#;/*This is how you can specify ranges in between the numerics. Use a #. Will show all the records in this range of orderdates.*/

