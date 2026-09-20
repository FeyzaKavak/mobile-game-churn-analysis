# Mobile Game Churn & Monetization Analysis

## Project Overview
This project focuses on identifying player churn bottlenecks and financial impacts within a mobile RPG game simulation. Using SQL for data manipulation and Power BI for executive dashboarding, the analysis pinpoints critical retention drops and provides actionable LiveOps strategies.

## Tech Stack & Tools
* **Database Management:** DBeaver, SQLite
* **Data Querying:** SQL (Structured Query Language)
* **Business Intelligence:** Power BI Desktop
* **Strategy Formulation:** AI-Augmented Analytics (ChatGPT/Claude)

## SQL Analysis & Technical Execution
The analysis executed in DBeaver isolated players who abandoned the game (`Left_The_Game = 'Yes'`) and aggregated them by level using the following SQL query:

```sql
SELECT Reached_Level, 
       COUNT(Player_ID) AS Churned_Players_Count, 
       AVG(Daily_Play_Time_Min) AS Avg_Daily_Play_Time_Min, 
       SUM(Total_Spend_Euro) AS Total_Revenue_Loss_Euro
FROM game_data
WHERE Left_The_Game = 'Yes'
GROUP BY Reached_Level
ORDER BY Churned_Players_Count DESC;
```

---

# Player Churn Analysis & Retention Recommendations

## Executive Summary
The churn analysis indicates that player loss is concentrated in the early-to-mid game progression. The highest number of churned players is observed at **Level 4 (12 players)**, followed by **Level 3 (10 players)** and **Level 2 (10 players)**. This pattern suggests that the early progression experience may be a critical point for player retention.

## Key Findings
* **Level 4** represents the highest concentration of churn, indicating a potential retention bottleneck.
* **Levels 2–4** collectively account for a significant portion of player losses.
* The concentration of churn at relatively low levels suggests that some players may disengage before experiencing the game's deeper content and progression systems.

## Recommended Actions

### 1. Improve Early-Game Experience
Review Levels 2–4 for potential difficulty spikes, repetitive gameplay, unclear objectives, or insufficient rewards. Consider introducing clearer tutorials, more frequent progression rewards, and stronger feedback mechanisms during this stage.

### 2. A/B Testing
Run controlled A/B tests focused on the Level 2–4 experience:
* **Control:** Current progression and reward structure.
* **Variant A:** Increased rewards and milestone bonuses at Levels 2–4.
* **Variant B:** Improved onboarding, clearer objectives, and additional guidance.

*Metrics to track:* Day 1/Day 7 retention, level completion rate, session duration, and churn rate to determine which changes improve retention.

### 3. Monetization & In-Game Store
Avoid aggressive monetization during the early progression phase. Instead, test low-friction offers such as:
* Beginner bundles with useful but non-essential items.
* Limited-time progression support packs.
* Level-based reward bundles unlocked through normal gameplay.
* Cosmetic items that provide personalization without creating pay-to-win pressure.

*Metrics to track:* Conversion rate, average revenue per paying user, retention, and churn to ensure monetization improvements do not negatively affect player retention.

## Conclusion
The data identifies **Levels 2–4 as a key retention area requiring further investigation**. Prioritizing improvements to early-game progression and validating them through A/B testing can help determine which design changes meaningfully reduce churn. Monetization initiatives should complement the player experience rather than create additional friction during the early game.

<img width="1015" height="618" alt="dashboard" src="https://github.com/user-attachments/assets/059c4a92-8380-4b2e-b274-4f17f471373d" />


