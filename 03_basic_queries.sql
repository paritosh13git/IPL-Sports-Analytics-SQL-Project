-- Q5: First 20 rows of deliveries
SELECT *
FROM deliveries
ORDER BY id, inning, over, ball
LIMIT 20;

-- Q6: First 20 rows of matches
SELECT *
FROM matches
LIMIT 20;

-- Q7: Matches on 2 May 2013
SELECT *
FROM matches
WHERE date = '2013-05-02';

-- Q8: Result = runs AND margin > 100
SELECT *
FROM matches
WHERE result = 'runs'
  AND result_margin > 100;

-- Q9: Tied matches
SELECT *
FROM matches
WHERE result = 'tie'
ORDER BY date DESC;

-- Q10: Number of cities hosting matches
SELECT COUNT(DISTINCT city) AS total_cities
FROM matches;
