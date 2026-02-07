SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(s.quantity) AS total_quantity
FROM
    customers c
    JOIN sales s ON c.customer_id = s.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING
    SUM(s.quantity) > (
        SELECT
            AVG(customer_total)
        FROM (
            SELECT
                SUM(quantity) AS customer_total
            FROM
                sales
            GROUP BY
                customer_id
        ) AS customer_totals
    );