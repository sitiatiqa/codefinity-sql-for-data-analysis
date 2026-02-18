-- Write your code here
SELECT  product_id, product_name,
    UPPER(product_name) AS product_name_upper,
    SUBSTRING(product_name,1,3) AS product_name_first3
FROM products;