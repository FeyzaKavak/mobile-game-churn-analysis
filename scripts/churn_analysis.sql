-- Analysing churned players by level and calculating total revenue loss
SELECT Reached_Level, 
       COUNT(Player_ID) AS Churned_Players_Count, 
       AVG(Daily_Play_Time_Min) AS Avg_Daily_Play_Time_Min, 
       SUM(Total_Spend_Euro) AS Total_Revenue_Loss_Euro
FROM game_data
WHERE Left_The_Game = 'Yes'
GROUP BY Reached_Level
ORDER BY Churned_Players_Count DESC;
