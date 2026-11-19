-- Overall Player Impact Analysis (2023-2024)
-- Calculates a custom impact score using points,
-- rebounds, assists, steals, and blocks per game.
-- Uses deduplicated player statistics.
-- Includes players who appeared in at least 65 games.
-- This is a custom unweighted metric, not an
-- official NBA player efficiency rating.

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
    CAST(PTS AS NUMERIC) +
    CAST(TRB AS NUMERIC) +
    CAST(AST AS NUMERIC) +
    CAST(STL AS NUMERIC) +
    CAST(BLK AS NUMERIC),
    2
  ) AS impact_score
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
WHERE G >= 65
ORDER BY impact_score DESC
LIMIT 10;
