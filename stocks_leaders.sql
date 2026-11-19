-- Defensive Stocks Leaders (2023-2024)
-- Ranks NBA players by combined steals and
-- blocks per game (commonly called "stocks").
-- Uses deduplicated player statistics.
-- Includes players who appeared in at least 30 games.

SELECT
  Player,
  Tm,
  G,
  STL,
  BLK,
  ROUND(
    CAST(STL AS NUMERIC) +
    CAST(BLK AS NUMERIC),
    2
  ) AS stocks
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
WHERE G >= 30
ORDER BY stocks DESC
LIMIT 10;
