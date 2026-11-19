
-- Project: NBA Player Statistics Analysis (2023-2024)
-- Category: Data Preparation
-- Task: Standardize Field Goal Percentage Column Name
--
-- Purpose:
-- Rename the original "FG%" column to "fg_pct"
-- to simplify SQL queries and improve consistency.
--
-- Note:
-- This modifies the table schema, not the
-- underlying field goal percentage values.
-- Run only when the original "FG%" column exists.

ALTER TABLE
    `nba-player-data-492519.NBA_Player_Stats.nba_stats_cleaned`
RENAME COLUMN `FG%` TO fg_pct;
