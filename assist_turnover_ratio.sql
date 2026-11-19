
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Analysis: Top 10 Assist-to-Turnover Ratios
--
-- Purpose:
-- Identify NBA players who distribute the ball
-- efficiently while limiting turnovers.
--
-- Method:
-- Calculate assists per turnover (AST / TOV).
-- Include only players averaging at least
-- 7.3 assists per game and playing 41+ games.
-- Rank the top 10 by assist-to-turnover ratio.

SELECT
    Player,
    AST,
    TOV,
    G,
    ROUND(SAFE_DIVIDE(AST, TOV), 2) AS assist_turnover_ratio
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
WHERE AST >= 7.3
  AND G >= 41
ORDER BY assist_turnover_ratio DESC
LIMIT 10;
