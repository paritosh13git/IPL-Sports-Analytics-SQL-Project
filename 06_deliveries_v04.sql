CREATE TABLE deliveries_v04 AS
SELECT 
    CONCAT(id, '-', inning, '-', over, '-', ball) AS ball_id,
    *
FROM deliveries_v03;
