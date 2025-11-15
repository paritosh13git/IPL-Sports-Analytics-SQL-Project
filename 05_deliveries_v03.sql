CREATE TABLE deliveries_v03 AS
SELECT d.*, m.venue, m.date AS match_date
FROM deliveries_v02 d
JOIN matches m
ON d.id = m.id;
