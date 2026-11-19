
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Most Minutes Played
-- Purpose: Identify NBA players who accumulated
-- the most total playing minutes during the season.
--
-- Method:
-- Multiply average minutes per game (MP)
-- by games played (G) to estimate total minutes.
-- Rank players from highest to lowest total minutes.

SELECT
    Player,
    G,
    MP,
    MP * G AS total_minutes
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
ORDER BY total_minutes DESC;
