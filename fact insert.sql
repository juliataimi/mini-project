use miniprojekti_2
go

 INSERT INTO FactListing
 SELECT 
	dc.company_id,
	tfl.work_year,
	tfl.job_title, 
	tfl.salary_in_usd,
	tfl.experience_level
FROM TempFactListing tfl
JOIN DimCompany dc ON tfl.company_location = dc.company_location 
		AND
					tfl.company_size = dc.company_size


INSERT INTO FactPerson
SELECT 
	dp.person_id,
	tfp.job_title,
	tfp.salary
FROM TempFactPerson tfp
JOIN DimPerson dp ON tfp.age = dp.age
AND tfp.gender = dp.gender 
AND tfp.education_level = dp.education_level
AND tfp.years_of_experience = dp.years_of_experience

	