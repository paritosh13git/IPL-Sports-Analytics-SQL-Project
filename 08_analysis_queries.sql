-- Boundaries & dot balls
SELECT ball_result, COUNT(*) 
FROM deliveries_v02
GROUP BY ball_result;

-- Boundaries by team
SELECT batting_team, COUNT(*)
FROM deliveries_v02
WHERE ball_result = 'boundary'
GROUP BY batting_team
ORDER BY COUNT(*) DESC;

-- Dot balls by bowling team
SELECT bowling_team, COUNT(*)
FROM deliveries_v02
WHERE ball_result = 'dot'
GROUP BY bowling_team
ORDER BY COUNT(*) DESC;

-- Dismissal types
SELECT dismissal_kind, COUNT(*)
FROM deliveries
WHERE dismissal_kind IS NOT NULL
GROUP BY dismissal_kind;

-- Top 5 bowlers conceding most extra runs
SELECT bowler, SUM(extra_runs) AS total_extra
FROM deliveries
GROUP BY bowler
ORDER BY total_extra DESC
LIMIT 5;

-- Runs per venue
SELECT venue, SUM(total_runs)
FROM deliveries_v03
GROUP BY venue
ORDER BY SUM(total_runs) DESC;

-- Eden Gardens yearly runs
SELECT EXTRACT(YEAR FROM match_date) AS year, SUM(total_runs)
FROM deliveries_v03
WHERE venue = 'Eden Gardens'
GROUP BY year
ORDER BY SUM(total_runs) DESC;

-- Repeating ball_id
SELECT *
FROM deliveries_v05
WHERE r_num = 2;

SELECT *
FROM deliveries_v05
WHERE ball_id IN (
    SELECT ball_id FROM deliveries_v05 WHERE r_num = 2
);
