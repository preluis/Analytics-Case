--SQL solution--
DROP TABLE IF EXISTS Balance;

CREATE TABLE Balance (
  month INT,
  customer_id UUID,
  first_name VARCHAR(128),
  last_name VARCHAR(128),
  transfer_in FLOAT,
  transfer_out FLOAT
);

INSERT INTO Balance (month, customer_id, first_name, last_name, transfer_in, transfer_out)
SELECT dm.action_month, a.customer_id, c.first_name, c.last_name, ti.amount, 0 
FROM transfer_ins ti
JOIN accounts a ON ti.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN d_time dt ON ti.transaction_completed_at = dt.time_id
JOIN d_month dm on dt.month_id = dm.month_id
JOIN d_year dy on dt.year_id = dy.year_id
WHERE ti.status = 'completed' and dy.action_year='2020';

INSERT INTO Balance (month, customer_id, first_name, last_name, transfer_in, transfer_out)
SELECT dm.action_month, a.customer_id, c.first_name, c.last_name, 0 , tou.amount
FROM transfer_outs tou
JOIN accounts a ON tou.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN d_time dt ON tou.transaction_completed_at = dt.time_id
JOIN d_month dm on dt.month_id = dm.month_id
JOIN d_year dy on dt.year_id = dy.year_id
WHERE tou.status = 'completed' and dy.action_year='2020';

INSERT INTO Balance (month, customer_id, first_name, last_name, transfer_in, transfer_out)
SELECT dm.action_month, a.customer_id, c.first_name, c.last_name, CASE WHEN in_or_out like '%in%' THEN pix_amount ELSE 0 END, CASE WHEN in_or_out like '%out%' THEN pix_amount ELSE 0 END 
FROM pix_movements pix
JOIN accounts a ON pix.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN d_time dt ON pix.pix_completed_at = dt.time_id
JOIN d_month dm on dt.month_id = dm.month_id
JOIN d_year dy on dt.year_id = dy.year_id
WHERE pix.status = 'completed' and dy.action_year='2020';


SELECT month, customer_id, first_name, last_name, SUM(transfer_in) as 'Total Transfer In', SUM(transfer_out) as 'Total Transfer out', SUM(SUM(transfer_in)-SUM(transfer_out)) OVER (PARTITION BY customer_id ORDER BY month) AS 'Account Monthly Balance' 
FROM Balance
GROUP BY customer_id, month
ORDER BY month;


