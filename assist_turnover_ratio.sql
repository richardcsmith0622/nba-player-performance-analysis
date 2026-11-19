-- Assist-to-Turnover Ratio Analysis (2023-2024)
-- Measures playmaking efficiency by comparing
-- assists per game to turnovers per game.
-- Uses deduplicated player statistics.
-- Includes players averaging at least 7.3 assists
-- per game and appearing in at least 41 games.

SELECT
  Player,
  AST,
  TOV,
  G,
  ROUND(
    SAFE_DIVIDE(
      CAST(AST AS NUMERIC),
      CAST(TOV AS NUMERIC)
    ),
    2
  ) AS assist_turnover_ratio
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
WHERE AST >= 7.3
  AND G >= 41
ORDER BY assist_turnover_ratio DESC
LIMIT 10;
