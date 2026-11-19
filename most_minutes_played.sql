-- Most Minutes Played (2023-2024)
-- Estimates total minutes played during the season.
-- Multiplies average minutes per game by games played.
-- Uses deduplicated player statistics to ensure
-- each player appears only once.

SELECT
  Player,
  G,
  MP,
  ROUND(
    CAST(MP AS NUMERIC) * G,
    1
  ) AS total_minutes
FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_unique`
ORDER BY total_minutes DESC;
