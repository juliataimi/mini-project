CREATE DATABASE miniprojekti_2
go
use miniprojekti_2
go

-------------------------------------------------------------

CREATE TABLE [DimPerson]
(
 [person_id]       int identity primary key NOT NULL ,
 [gender]          varchar(50) NULL ,
 [education_level] varchar(50) NULL ,
 [age]		tinyint NULL ,
 [years_of_experience] tinyint  NULL ,
);
GO

-------------------------------------------------------------

CREATE TABLE [DimCompany]
(
 [company_id]     int identity primary key NOT NULL ,
 [company_location] varchar(50) NULL ,
 [company_size]     varchar(50) NULL ,

);
GO

-------------------------------------------------------------

CREATE TABLE [FactListing]
(
[factlisting_id]     int identity primary key NOT NULL ,
[company_id]      int FOREIGN KEY REFERENCES DimCompany(company_id),
[work_year]		int null,
[job_title]      varchar(50) NULL, 
[salary]         decimal(18,0) NULL ,
[experience_level] varchar(50) NULL ,
);
GO

CREATE TABLE [FactPerson]
(
[factperson_id]     int identity primary key NOT NULL ,
[person_id]       int FOREIGN KEY REFERENCES DimPerson(person_id),
[job_title]      varchar(50) NULL ,
[salary]         decimal(18,0) NULL ,
);
GO

 --------------------------------------------------------

 CREATE TABLE [TempFactListing]
(
[temp_id]     int identity primary key NOT NULL ,
[work_year]        int NULL,
[experience_level]       nvarchar(50) null,
[employment_type]    nvarchar(50) null,
[job_title]        nvarchar(50) null,
[salary]    int null,
[salary_currency]    nvarchar(50) null, 
[salary_in_usd]        int null,
[employee_residence] nvarchar(50) null,
[remote_ratio] int null,
[company_location] nvarchar(50) null,
[company_size] nvarchar(50) null,
)
GO

 CREATE TABLE [TempFactPerson]
(
[tempperson_id]     int identity primary key NOT NULL ,
[age]        int NULL,
[gender]       varchar(50) null,
[education_level]       varchar(50) null,
[job_title]        varchar(50) null,
[years_of_experience]       int null,
[salary]        int null,
[experience_level]        varchar(50) null,
)
GO

 select * from DimCompany
 select * from DimPerson
 select * from FactListing
 select * from FactPerson
 select * from TempFactListing
 select * from TempFactPerson

