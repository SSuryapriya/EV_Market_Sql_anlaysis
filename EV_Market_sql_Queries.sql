create database ev_market;
use ev_market;

SELECT * 
FROM global_ev_market_charging_infrastructure_2026
LIMIT 10;

SELECT COUNT(*) AS Total_Records
FROM global_ev_market_charging_infrastructure_2026;

SELECT DISTINCT country
FROM global_ev_market_charging_infrastructure_2026;

SELECT country, SUM(ev_sales_units) AS Total_Sales
FROM global_ev_market_charging_infrastructure_2026
GROUP BY country
ORDER BY Total_Sales DESC;

SELECT ev_brand, SUM(ev_sales_units) AS Total_Sales
FROM global_ev_market_charging_infrastructure_2026
GROUP BY ev_brand
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT vehicle_type, SUM(ev_sales_units) AS Total_Sales
FROM global_ev_market_charging_infrastructure_2026
GROUP BY vehicle_type;

SELECT AVG(battery_capacity_kwh) AS Avg_Battery
FROM global_ev_market_charging_infrastructure_2026;

SELECT MAX(vehicle_range_km) AS Max_Range
FROM global_ev_market_charging_infrastructure_2026;

SELECT MIN(charging_time_hours) AS Fastest_Charging
FROM global_ev_market_charging_infrastructure_2026;

-- Average EV Price--
SELECT AVG(avg_ev_price_usd) AS Average_Price
FROM global_ev_market_charging_infrastructure_2026;

-- Top 10 Countries by Charging Stations--
SELECT country, SUM(charging_stations) AS Total_Stations
FROM global_ev_market_charging_infrastructure_2026
GROUP BY country
ORDER BY Total_Stations DESC
LIMIT 10;

-- Government Incentives Count--
SELECT govt_incentives, COUNT(*) AS Total
FROM global_ev_market_charging_infrastructure_2026
GROUP BY govt_incentives;

-- Average Market Adoption Rate--
SELECT AVG(market_adoption_rate) AS Avg_Adoption
FROM global_ev_market_charging_infrastructure_2026;

-- Total CO2 Reduction--
SELECT SUM(co2_reduction_mt) AS Total_CO2_Reduction
FROM global_ev_market_charging_infrastructure_2026;

-- Sales by Year--
SELECT year, SUM(ev_sales_units) AS Total_Sales
FROM global_ev_market_charging_infrastructure_2026
GROUP BY year
ORDER BY year;

-- Top 5 Most Expensive EV Brands--
SELECT ev_brand, AVG(avg_ev_price_usd) AS Avg_Price
FROM global_ev_market_charging_infrastructure_2026
GROUP BY ev_brand
ORDER BY Avg_Price DESC
LIMIT 5;

-- Battery Capacity by Brand--
SELECT ev_brand, AVG(battery_capacity_kwh) AS Avg_Battery
FROM global_ev_market_charging_infrastructure_2026
GROUP BY ev_brand
ORDER BY Avg_Battery DESC;

-- Top 10 Countries by Market Adoption Rate--
SELECT country, AVG(market_adoption_rate) AS Adoption_Rate
FROM global_ev_market_charging_infrastructure_2026
GROUP BY country
ORDER BY Adoption_Rate DESC
LIMIT 10;

-- Top 10 Highest EV Sales Records--
SELECT *
FROM global_ev_market_charging_infrastructure_2026
ORDER BY ev_sales_units DESC
LIMIT 10;

