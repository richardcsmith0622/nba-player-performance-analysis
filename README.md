# NBA Player Statistics Analysis (2023–2024)

## Project Overview

This project analyzes NBA player statistics from the 2023–2024 season using SQL in Google BigQuery.

The goal is to explore player performance across scoring, shooting efficiency, playmaking, defensive production, and overall statistical contributions.

The project also demonstrates data preparation, SQL querying, and the creation of custom performance metrics.

## Dataset

- **Dataset:** 2023–2024 NBA Player Stats
- **Source:** Kaggle
- **Creator:** vivovinco
- **Season:** 2023–2024
- **Dataset Link:** [View Dataset on Kaggle](https://www.kaggle.com/datasets/vivovinco/2023-2024-nba-player-stats)

The dataset contains individual NBA player statistics,
including points, rebounds, assists, steals, blocks,
shooting percentages, games played, and minutes played.
 
## Tools and Technologies

- **Google BigQuery:** Data storage and SQL analysis
- **SQL:** Data preparation, filtering, calculations, and ranking
- **Tableau:** Data visualization
- **GitHub:** Project documentation and code repository

## Data Preparation

Before conducting the analysis, I performed data preparation tasks to improve consistency and usability.

**1. Duplicate Handling**

Used the `ROW_NUMBER()` window function to select one record per player, prioritizing combined-team (`TOT`) records for players who appeared on multiple teams.

**2. Column Name Standardization**

Renamed the field goal percentage column from `FG%` to `fg_pct` using `ALTER TABLE` and `RENAME COLUMN`.

## SQL Analysis

The project contains eight SQL scripts covering the following areas:

| Analysis | Description |
|---|---|
| Duplicate Handling | Selects one record per player using a window function |
| Top NBA Scorers | Ranks players by points per game |
| Scoring and Shooting Efficiency | Examines high-scoring players alongside field goal percentage |
| Most Minutes Played | Estimates total playing time using games played and minutes per game |
| Assist-to-Turnover Ratio | Evaluates playmaking efficiency |
| Overall Player Impact | Creates a custom metric combining five statistical categories |
| Field Goal Column Standardization | Standardizes a column name for easier querying |
| Defensive Stocks Leaders | Ranks players by combined steals and blocks per game |

## Analytical Methods

The analysis uses SQL techniques including:

- `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`
- Calculated columns and arithmetic expressions
- `ROW_NUMBER()` window functions
- `CASE` expressions
- `SAFE_DIVIDE()` to handle division by zero
- `ROUND()` for readable numerical results
- `ALTER TABLE` and `RENAME COLUMN`

Minimum games-played requirements were applied to selected analyses to reduce the influence of players with limited appearances.

## Custom Performance Metrics

**Overall Statistical Impact**

Calculated by combining points, rebounds, assists, steals, and blocks per game.

`Impact Score = PTS + TRB + AST + STL + BLK`

This is a custom, unweighted metric rather than an official NBA efficiency rating.

**Assist-to-Turnover Ratio**

Calculated by dividing assists per game by turnovers per game.

`Assist-to-Turnover Ratio = AST / TOV`

**Defensive Stocks**

Calculated by combining steals and blocks per game.

`Stocks = STL + BLK`

Stocks measures box-score defensive production rather than overall defensive ability.

## Data Visualization

Tableau is used to visualize player statistics and support comparisons across different performance categories.

**Tableau Dashboard:** Link to be added.

## Project Takeaways

This project provided practical experience with SQL-based sports data analysis, including preparing data, constructing calculated metrics, applying filters, and organizing analytical queries.

It also demonstrates how basketball statistics can be used to investigate different aspects of individual player performance.

## Future Improvements

Potential improvements include developing additional efficiency metrics, comparing performance across player positions, and expanding the analysis to multiple NBA seasons.
