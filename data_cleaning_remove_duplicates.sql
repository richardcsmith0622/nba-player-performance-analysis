-- NBA Player Data Deduplication (2023-2024)
-- Creates a separate table with one record per player.
-- Prioritizes TOT (combined-season) records for
-- players who appeared on multiple teams.
-- Preserves the original cleaned dataset.

CREATE OR REPLACE TABLE
  `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
AS

SELECT *
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`

QUALIFY ROW_NUMBER() OVER (
  PARTITION BY Player
  ORDER BY
    CASE WHEN Tm = 'TOT' THEN 1 ELSE 2 END,
    G DESC,
    Tm
) = 1;
