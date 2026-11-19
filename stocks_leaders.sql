
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Top 10 Defensive Stocks Leaders
--
-- Purpose:
-- Identify players with the highest combined
-- steals and blocks per game.
--
-- Method:
-- Calculate stocks by adding steals (STL)
-- and blocks (BLK).
-- Include only players who played at least
-- 30 games during the season.
-- Rank the top 10 players by stocks per game.
--
-- Note:
-- Stocks measures defensive box-score production,
-- not overall defensive ability.

SELECT
    Player,
    Tm,
    G,
    STL,
    BLK,
    ROUND(STL + BLK, 2) AS stocks
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
WHERE G >= 30
ORDER BY stocks DESC
LIMIT 10;
