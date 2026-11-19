-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Top 15 Scorers with Shooting Efficiency
-- Purpose: Identify the top 15 scoring players
-- who averaged at least 20 minutes per game
-- and played at least 42 games.
-- Players are ranked by points per game,
-- with field goal percentage as a tiebreaker.

SELECT
    Player,
    Tm,
    MP,
    PTS,
    fg_pct
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
WHERE MP >= 20
  AND G >= 42
ORDER BY PTS DESC, fg_pct DESC
LIMIT 15;
