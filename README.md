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

Used ROW_NUMBER() and QUALIFY to create a
deduplicated table named `nba_stats_unique`.

The process prioritizes combined-season (TOT)
records for players who changed teams, retaining
one record per player while preserving the
original cleaned dataset.

All player-ranking analyses use the
deduplicated table.

**2. Column Name Standardization**

Renamed the field goal percentage column from `FG%` to `fg_pct` using `ALTER TABLE` and `RENAME COLUMN`.

## SQL Analysis

The project contains eight SQL scripts covering
data preparation and player performance analysis.

| Analysis | Description |
|---|---|
| [Duplicate Handling](data_cleaning_remove_duplicates.sql) | Creates a deduplicated player table using a window function |
| [Top NBA Scorers](scoring_analysis.sql) | Ranks players by points per game |
| [Scoring and Shooting Efficiency](scoring_efficiency_analysis.sql) | Examines scoring alongside field goal percentage |
| [Most Minutes Played](most_minutes_played.sql) | Estimates total playing time |
| [Assist-to-Turnover Ratio](assist_turnover_ratio.sql) | Evaluates playmaking efficiency |
| [Overall Player Impact](overall_player_impact.sql) | Calculates a custom statistical impact score |
| [Field Goal Column Standardization](data_cleaning_fg.sql) | Renames the field goal percentage column |
| [Defensive Stocks Leaders](stocks_leaders.sql) | Ranks players by combined steals and blocks per game |


## Key Findings

### 1. Scoring Leaders

Analyzed points per game among players who appeared
in at least 41 games during the 2023-2024 NBA season.

**Key Findings:**
- Joel Embiid led qualifying players with 34.7 PPG.
- Luka Doncic ranked second with 33.9 PPG.
- Giannis Antetokounmpo ranked third with 30.4 PPG.
- Four players averaged more than 30 points per game.

**Insight:** Embiid and Doncic stood out as the
highest-scoring players among those meeting the
minimum games-played requirement.

### 2. Playmaking Efficiency

Analyzed assist-to-turnover ratios among players
averaging at least 7.3 assists per game and
appearing in at least 41 games.

**Key Findings:**
- Tyus Jones led qualifying players with a 7.30
  assist-to-turnover ratio.
- Fred VanVleet ranked second with 4.76.
- Tyrese Haliburton ranked third with 4.74.

**Insight:** Higher assist totals do not necessarily
indicate better ball security. Tyus Jones demonstrated
the strongest assist-to-turnover efficiency among
qualifying players.

### 3. Defensive Stocks Leaders

Analyzed combined steals and blocks per game
among players who appeared in at least 30 games.

**Key Findings:**
- Victor Wembanyama led with 4.8 stocks per game.
- Anthony Davis ranked second with 3.5 stocks.
- Daniel Gafford ranked third with 3.0 stocks
  using his combined-season statistics.

**Insight:** Wembanyama demonstrated exceptional
defensive box-score production, particularly through
shot blocking. Deduplicating the dataset also
prevented traded players from appearing multiple
times in the rankings.

### 4. Overall Player Impact

Created a custom statistical impact score by
combining points, rebounds, assists, steals,
and blocks per game.

Players were required to appear in at least
65 games.

**Key Findings:**
- Luka Doncic ranked first with an impact
  score of 54.8.
- Giannis Antetokounmpo ranked second at 50.7.
- Nikola Jokic ranked third at 50.1.

**Insight:** Combining multiple statistical
categories provides a broader view of box-score
production than scoring alone. The results
highlighted players who contributed across
several areas of the game.

**Note:** This is a custom, unweighted metric,
not an official NBA player efficiency rating.


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

Created an interactive Tableau dashboard to
visualize NBA player statistics from the
2023-2024 season.

The dashboard complements the SQL analysis
by presenting player performance data visually.

**View the Interactive Dashboard:**

[2023-2024 NBA Player Statistics Dashboard](https://public.tableau.com/views/NBA23-24StatAnalysis/Dashboard1)


## Project Takeaways

This project provided practical experience with SQL-based sports data analysis, including preparing data, constructing calculated metrics, applying filters, and organizing analytical queries.

It also demonstrates how basketball statistics can be used to investigate different aspects of individual player performance.

## Future Improvements

Potential improvements include developing additional efficiency metrics, comparing performance across player positions, and expanding the analysis to multiple NBA seasons.
