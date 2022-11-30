SELECT a.customer_id, a.customer_name, a.customer_email
FROM customers a 
JOIN transactions b on a.customer_id = b.customer_id;

-- Deduplication using JOIN


