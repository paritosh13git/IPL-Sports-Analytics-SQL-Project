  DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS deliveries_raw;
DROP TABLE IF EXISTS matches_raw;

-- RAW tables for error-free import
CREATE TABLE matches_raw (
    id TEXT,
    city TEXT,
    date TEXT,
    player_of_match TEXT,
    venue TEXT,
    neutral_venue TEXT,
    team1 TEXT,
    team2 TEXT,
    toss_winner TEXT,
    toss_decision TEXT,
    winner TEXT,
    result TEXT,
    result_margin TEXT,
    eliminator TEXT,
    method TEXT,
    umpire1 TEXT,
    umpire2 TEXT
);

CREATE TABLE deliveries_raw (
    id TEXT,
    inning TEXT,
    over TEXT,
    ball TEXT,
    batsman TEXT,
    non_striker TEXT,
    bowler TEXT,
    batsman_runs TEXT,
    extra_runs TEXT,
    total_runs TEXT,
    is_wicket TEXT,
    dismissal_kind TEXT,
    player_dismissed TEXT,
    fielder TEXT,
    extras_type TEXT,
    batting_team TEXT,
    bowling_team TEXT
);

-- FINAL TABLES
CREATE TABLE matches (
    id INT,
    city VARCHAR(100),
    date DATE,
    player_of_match VARCHAR(100),
    venue VARCHAR(200),
    neutral_venue INT,
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
    toss_decision VARCHAR(20),
    winner VARCHAR(100),
    result VARCHAR(20),
    result_margin INT,
    eliminator VARCHAR(5),
    method VARCHAR(50),
    umpire1 VARCHAR(100),
    umpire2 VARCHAR(100)
);

CREATE TABLE deliveries (
    id INT,
    inning INT,
    over INT,
    ball INT,
    batsman VARCHAR(100),
    non_striker VARCHAR(100),
    bowler VARCHAR(100),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    is_wicket INT,
    dismissal_kind VARCHAR(50),
    player_dismissed VARCHAR(100),
    fielder VARCHAR(100),
    extras_type VARCHAR(50),
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100)
);

