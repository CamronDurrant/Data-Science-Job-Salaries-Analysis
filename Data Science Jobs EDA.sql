------Pulling everything from the data science salaries database
SELECT *
FROM ds_salaries

-----Returning The Unique Titles In The Job Titles Column
SELECT DISTINCT job_title
FROM ds_salaries


--------Pulling All The Distinct Company locations From The Dataset-------------------

SELECT DISTINCT company_location
FROM ds_salaries

---------Pulling All The Employee Location From The Dataset-----------------
SELECT DISTINCT employee_residence
FROM ds_salaries

--------------Which one of the the Job Titles makes most money that works fully remote based in the USA Of Each Experience Level----------COMPLETED
SELECT job_title, experience_level, employment_type, salary_in_usd, employee_residence, remote_ratio
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100
ORDER BY 4 DESC

-----------------In The Work Year 2020 Which Data Analytics Job Made The most salary in the us---------------------- COMPLETED
SELECT job_title, work_year, employment_type, experience_level, salary_in_usd, employee_residence, remote_ratio
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100 AND work_year = 2020
ORDER BY 5 DESC

-----------------In The Work Year 2020 Which Data Analytics Job Made The most salary in the the US as Full time workers with Expert experience----------------------
SELECT job_title, work_year, employment_type, experience_level, salary_in_usd, employee_residence, remote_ratio
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100 AND work_year = 2020 AND experience_level = 'EX'
ORDER BY 5 DESC

------------Which one of the the employment types makes the most money that works on site based in the US----------
SELECT job_title, employee_residence, salary, salary_in_usd, employee_residence, remote_ratio
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 0
ORDER BY 3 DESC

------------Which one of the the employment types makes the most money that works remotely In Each Experienece Level based in the US From work year 2020---------- Completed Thank God
SELECT job_title,experience_level, employee_residence, salary, salary_in_usd, employee_residence, remote_ratio, work_year
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100 And work_year = 2020
ORDER BY 4 DESC

-----------------------Which one of the the employment types makes the most money that works remotely  In Each Experienece Level based in the US From work year 2021---------- Completed Thank God
SELECT job_title,experience_level, employee_residence, salary, salary_in_usd, employee_residence, remote_ratio, work_year
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100 And work_year = 2021
ORDER BY 4 DESC

-----------------------Which one of the the employment types makes the most money that works remotely  In Each Experienece Level based in the US From work year 2021----------Completed Thank God
SELECT job_title,experience_level, employee_residence, salary, salary_in_usd, employee_residence, remote_ratio, work_year
FROM ds_salaries
Where employee_residence = 'US' 
AND remote_ratio = 100 And work_year = 2022
ORDER BY 4 DESC

---------------Top 10 Highest paying data analyisis jobs in THE USA where Full Time employees works fully remote From 2020 - 2021---------Completed Thank God
SELECT TOP 10 job_title, salary, salary_in_usd, employee_residence, employment_type
FROM ds_salaries
Where employment_type = 'FT' AND employee_residence = 'US'
ORDER BY 2 DESC


-------What Country Pays The Most for full time Onsite Work For Each Job Title based on employee residence IN THE US----------
SELECT job_title, salary, employee_residence, salary_in_usd, remote_ratio, employment_type
FROM ds_salaries
WHERE remote_ratio = 100 
AND employment_type = 'FT'
AND employee_residence = 'US'
ORDER BY 2 DESC


-------------Creating A where Statement that indidcates better understanding on abbreviations
SELECT
CASE employment_type
  WHEN 'CT' THEN 'Contract'
  WHEN 'FT' THEN 'Full Time'
  WHEN 'PT' THEN 'Part Time'
  WHEN 'FL' THEN 'Freelance'
 END AS 'Employment Type'
 FROM ds_salaries


 SELECT
CASE experience_level
WHEN 'EN' THEN 'Entry Level'
WHEN 'EX' THEN 'Expert/Executive level/Director'
WHEN 'MI' THEN 'Mid Level'
WHEN 'SE' THEN 'Senior Level'
END AS 'Experience Level Meaning'
FROM ds_salaries


