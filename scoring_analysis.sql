-- Top NBA Scorers (2023-2024)
-- Identifies the highest-scoring players by
-- points per game using deduplicated player data.

SELECT
  Player,
  Tm,
  PTS
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
WHERE G >= 41
ORDER BY PTS DESC
LIMIT 10;
