/* 1.
All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram to familiarize yourself with 
the table and column names to write accurate queries and get the appropriate answers.

Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more. */

SELECT
Milliseconds
FROM tracks
WHERE Milliseconds >= 5000000

-- 2. Find all the invoices whose total is between $5 and $15 dollars.
SELECT
Total
FROM invoices
WHERE Total BETWEEN 5 and 15

-- 3. Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT
FirstName
,LastName
,Company 
,State
FROM Customers
WHERE State IN ('RJ','DF','AB','BC','CA','WA','NY')

--4. Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT
CustomerId
,total
,InvoiceId
,InvoiceDate
FROM invoices
WHERE CustomerId IN (56,58) AND (total BETWEEN 1 AND 5)

--5. Find all the tracks whose name starts with 'All'.

SELECT
Name
FROM tracks
WHERE Name LIKE 'All%'

--6. Find all the customer emails that start with "J" and are from gmail.com.
SELECT
Email
FROM Customers
WHERE Email LIKE 'J%@gmail.com'

--7. Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT
InvoiceId
,BillingCity
,total
FROM Invoices
WHERE BillingCity IN ('Brasília','Edmonton','Vancouver')
ORDER BY InvoiceId DESC

--8. Show the number of orders placed by each customer (hint: this is found in the invoices table) and 
--sort the result by the number of orders in descending order.
SELECT CustomerId, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC

--9. Find the albums with 12 or more tracks.
SELECT AlbumId, COUNT(*) AS NTracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12
