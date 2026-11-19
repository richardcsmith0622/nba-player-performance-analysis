SELECT *
FROM (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY Player
            ORDER BY CASE WHEN Tm = 'TOT' THEN 1 ELSE 2 END
        ) AS rn
    FROM `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
)
WHERE rn = 1;
