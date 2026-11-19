
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Highest Scoring NBA Players
-- Purpose: Identify the highest-scoring players
-- based on points per game (PTS).

SELECT
    Player,
    Tm,
    PTS
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
ORDER BY PTS DESC;

