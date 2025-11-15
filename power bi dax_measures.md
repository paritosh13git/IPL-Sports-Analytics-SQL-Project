# DAX Measures

Total Runs =
SUM(deliveries_v03[total_runs])

Total Wickets =
SUM(deliveries_v03[is_wicket])

Boundaries =
CALCULATE(COUNTROWS(deliveries_v03), deliveries_v03[ball_result] = "boundary")

Dot Balls =
CALCULATE(COUNTROWS(deliveries_v03), deliveries_v03[ball_result] = "dot")

Runs by Venue =
SUM(deliveries_v03[total_runs])

Yearly Runs =
CALCULATE(
    SUM(deliveries_v03[total_runs]),
    VALUES(deliveries_v03[year])
)
