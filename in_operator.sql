SELECT * from customers
where state = 'VA' OR state = 'GA' OR state = 'FL';
-- above is equal
SELECT * from customers
where state IN ('VA', 'FL', 'GA');