SELECT *
FROM products AS p
LEFT JOIN sales AS s
  ON p.product_id = s.product_id
WHERE s.product_id IS NULL;