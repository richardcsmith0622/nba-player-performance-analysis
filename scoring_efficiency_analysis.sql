-- Scoring and Shooting Efficiency (2023-2024)
-- Compares high-scoring NBA players and their
-- field goal percentages.
-- Uses deduplicated player statistics.
-- Includes players averaging at least 20 minutes
-- per game and appearing in at least 42 games.

SELECT
  Player,
  Tm,
  MP,
  PTS,
  fg_pct
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
WHERE MP >= 20
  AND G >= 42
ORDER BY PTS DESC, fg_pct DESC
LIMIT 15;
