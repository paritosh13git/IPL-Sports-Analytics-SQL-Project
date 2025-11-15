CREATE TABLE deliveries_v05 AS
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY ball_id ORDER BY id) AS r_num
FROM deliveries_v04;
