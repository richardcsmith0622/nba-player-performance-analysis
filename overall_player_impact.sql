
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Top 10 Players by Overall Statistical Impact
--
-- Purpose:
-- Identify players with the highest combined
-- per-game statistical production.
--
-- Method:
-- Create a custom impact score by adding
-- points, rebounds, assists, steals, and blocks.
-- Include only players who appeared in at least
-- 65 games to focus on consistent contributors.
--
-- Note:
-- This is a custom, unweighted metric rather
-- than an official NBA efficiency rating.

SELECT
    Player,
    Tm,
    PTS,
    TRB,
    AST,
    STL,
    BLK,
    G,
    ROUND(
        PTS + TRB + AST + STL + BLK, 2
    ) AS impact_score
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
WHERE G >= 65
ORDER BY impact_score DESC
LIMIT 10;
