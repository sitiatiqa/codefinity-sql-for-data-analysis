SELECT
  c.first_name || ' ' || c.last_name AS customer_name,
  p.product_name       AS product_name,
  s.quantity           AS quantity
FROM sales AS s
JOIN customers AS c
  ON s.customer_id = c.customer_id
JOIN products AS p
  ON s.product_id = p.product_id;