SELECT 
"First half of 2019" AS date_range,
SUM(invoice_total) AS total_sales,
SUM(payment_total) AS total_payments,
SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE due_date >= '2019-01-01' AND due_date <= '2019-07-01'
UNION
SELECT 
"Second half of 2019", 
SUM(invoice_total),
SUM(payment_total),
SUM(invoice_total - payment_total) 
FROM invoices
WHERE due_date> '2019-07-01' AND due_date <= '2019-12-31'
UNION
SELECT
"Total",
SUM(invoice_total),
SUM(payment_total),
SUM(invoice_total - payment_total)
FROM invoices;
