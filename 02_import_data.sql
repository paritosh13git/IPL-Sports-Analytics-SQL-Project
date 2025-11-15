-- Import matches
COPY matches_raw
FROM '/path/IPL_matches.csv'
DELIMITER E'\t'
CSV HEADER;

INSERT INTO matches
SELECT
    id::INT,
    city,
    TO_DATE(date,'DD-MM-YYYY'),
    player_of_match,
    venue,
    NULLIF(neutral_venue,'')::INT,
    team1,
    team2,
    toss_winner,
    toss_decision,
    winner,
    result,
    NULLIF(result_margin,'')::INT,
    eliminator,
    method,
    umpire1,
    umpire2
FROM matches_raw;

-- Import deliveries
COPY deliveries_raw
FROM '/path/IPL_Ball.csv'
DELIMITER E'\t'
CSV HEADER;

INSERT INTO deliveries
SELECT
    id::INT,
    inning::INT,
    over::INT,
    ball::INT,
    batsman,
    non_striker,
    bowler,
    NULLIF(batsman_runs,'NA')::INT,
    NULLIF(extra_runs,'NA')::INT,
    NULLIF(total_runs,'NA')::INT,
    NULLIF(is_wicket,'NA')::INT,
    NULLIF(dismissal_kind,'NA'),
    NULLIF(player_dismissed,'NA'),
    NULLIF(fielder,'NA'),
    NULLIF(extras_type,'NA'),
    batting_team,
    bowling_team
FROM deliveries_raw;
