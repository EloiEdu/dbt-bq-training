WITH stg_customers AS (
    SELECT 
        customer_id,
        CONCAT(first_name,'',last_name) as customer_name,
        email as email_adress,
        address as billing_adress,
    FROM raw.customer
    
)

SELECT * FROM stg_customers