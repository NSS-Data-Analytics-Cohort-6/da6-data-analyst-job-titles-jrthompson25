/*SELECT DISTINCT(medium)
FROM nashville_public_art; */


--1.	How many rows are in the data_analyst_jobs table? 1793
/* SELECT COUNT (*) 
FROM data_analyst_jobs; */

--2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? ExxonMobil
/* SELECT * 
FROM data_analyst_jobs
LIMIT 10; */

--3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky? 21 for TN, 27 for both TN and Kentucky 
/*SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';*/ 

--4. How many postings in Tennessee have a star rating above 4? 3
/* SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4; */

--5. How many postings in the dataset have a review count between 500 and 1000? 151
/* SELECT COUNT (*) 
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000; */


--*****************Still working on this one********************
--6. Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
--SELECT location AS state, AVG(star_rating) AS avg_rating

--7. Select unique job titles from the data_analyst_jobs table. How many are there? 881
/* SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs; */

--8.	How many unique job titles are there for California companies? 230
/* SELECT COUNT(DISTINCT title)  
FROM data_analyst_jobs
WHERE location = 'CA'; */

--*************Still working on this one*************************
--9. Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
/* SELECT company, AVG(star_rating) AS avg_star_rating, review_count
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company, review_count; */ 

--*************Still working on this one*************************
--10. Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
/* SELECT company, AVG(star_rating)    
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating) DESC; */

--11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 
--SELECT








