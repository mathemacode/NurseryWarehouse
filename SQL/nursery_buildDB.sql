-- Build database

DROP TABLE IF EXISTS FACILITY;
DROP TABLE IF EXISTS CLIMATE;
DROP TABLE IF EXISTS CHEMICAL;
DROP TABLE IF EXISTS LOCATION;
DROP TABLE IF EXISTS DATE;
DROP TABLE IF EXISTS NURSERY_ANALYSIS;

CREATE TABLE FACILITY (
	Facility_ID INTEGER PRIMARY KEY NOT NULL,
	Year INTEGER,
	PermitNumber INTEGER,
	PermitType VARCHAR(30),
	FacilityName VARCHAR(100),
	FacilityType VARCHAR(50),
	FacilityDetail VARCHAR(100),
	LikelyToDischargeNP VARCHAR(5)
);

CREATE TABLE CLIMATE (
	Climate_ID INTEGER PRIMARY KEY NOT NULL,
	State CHAR(2),
	Temperature NUMERIC,
	Humidity NUMERIC,
	AbnormalHiFlag CHAR(1),
	AbnormalLoFlag CHAR(1)
);

CREATE TABLE CHEMICAL (
	Chemical_ID INTEGER PRIMARY KEY NOT NULL,
	Chem_Name VARCHAR(50),
	Has_N_Limit VARCHAR(5),
	Has_P_Limit VARCHAR(5),
	Monitoring_N VARCHAR(5),
	Monitoring_P VARCHAR(5),
	Min_Limit NUMERIC,
	Max_Limit NUMERIC,
	Units VARCHAR(20)
);

CREATE TABLE LOCATION (
	Location_ID INTEGER PRIMARY KEY NOT NULL,
	City VARCHAR(50),
	State VARCHAR(50),
	Zip NUMERIC,
	County VARCHAR(50),
	EPARegion VARCHAR(50),
	Latitude NUMERIC,
	Longtitude NUMERIC
);

CREATE TABLE DATE (
	Date_ID INTEGER PRIMARY KEY NOT NULL,
	DateTime DATE,
	Year INTEGER,
	Month INTEGER,
	Day INTEGER
);

CREATE TABLE NURSERY_ANALYSIS (
	FACILITY_ID INTEGER,
	LOCATION_ID INTEGER,
	CLIMATE_ID INTEGER,
	CHEMICAL_ID INTEGER,
	DATE_ID INTEGER,
	Datetime DATE,
	AvgChemDischargeLimit NUMERIC,
	AvgSeasonLength NUMERIC,
	AvgDailyTemp NUMERIC,
	PrcntChemsMonitored NUMERIC,
	PrcntRiversImpaired NUMERIC,
	NumChemsDischarged NUMERIC,
	NumAbnormalLo NUMERIC,
	NumAbnormalHi NUMERIC
);
