-- Q1 The number of total countries
SELECT COUNT(DISTINCT country) as total_countries
FROM driver;

-- Q2 What are the drivers considerd in the DATABASE
select count(distinct driver)
from driver;

-- Q3 How many countries are present in decade 1 (2005-2014)?
select COUNT(DISTINCT country) as total_countries
from driver 
where year BETWEEN 2005 and 2014;

-- Q4 Which 5 top years that have data for the most countries?
SELECT count(distinct country) as count_contries, year
FROM driver as d
group by year
ORDER by count_contries desc
LIMIT 5;  

-- Q5 Year with the highest total tree cover loss: before EDA
SELECT year
FROM driver
GROUP BY year
order by Sum(tc_loss_ha) desc
limit 1;

-- Q6 Year with the highest total tree cover loss: after EDA
SELECT avg(by_country.sum) as avg_loss, year
FROM (
SELECT Sum(tc_loss_ha) as sum, country, year
FROM driver
GROUP BY country, year
) as by_country
GROUP BY year
order by avg_loss desc
limit 1;

-- Q7 Top 10 countries with the highest average tree cover loss across all years
SELECT avg(by_country.sum) as avg_loss, country
FROM (
SELECT Sum(tc_loss_ha) as sum, country, year
FROM driver
GROUP BY country, year
) as by_country
GROUP BY country
order by avg_loss desc
limit 10;

-- Q8 Top 10 countries with the highest tree cover loss in 2024
SELECT Sum(tc_loss_ha) as sum, country
FROM driver
where year== 2024
GROUP BY country, year
Order by sum desc
limit 10;


-- Q9 highest to 10 countries with the highest percentage of tree cover loss
-- relative to total tree cover area per country (across all years)
SELECT avg(by_country.sum)/by_country.extent_2000_ha as perc_avg_loss, country
FROM (
SELECT Sum(tc_loss_ha) as sum, country, year, extent_2000_ha
FROM driver
GROUP BY country, year
) as by_country
GROUP BY country
order by perc_avg_loss desc
LIMIT 10;

-- Q10 highest to 10 countries with the highest percentage of tree cover loss 
-- relative to total tree cover area per country in 2024
SELECT avg(by_country.sum)/by_country.extent_2000_ha as perc_avg_loss, country--, by_country.extent_2000_ha
FROM (
SELECT Sum(tc_loss_ha) as sum, country, year, extent_2000_ha
FROM driver
GROUP BY country, year
having year == 2024
) as by_country
GROUP BY country
order by perc_avg_loss desc
LIMIT 10;



