USE nashville_housing;

DROP TABLE IF EXISTS nash_housing;

-- Creating table for data import
CREATE TABLE nash_housing (
UniqueID INT,
ParcelID TEXT,
LandUse TEXT,
PropertyAddress VARCHAR(255), 
SaleDate DATE, 
SalePrice INT, 
LegalReference VARCHAR(255), 
SoldAsVacant TEXT, 
OwnerName TEXT, 
OwnerAddress TEXT, 
Acreage FLOAT, 
TaxDistrict TEXT, 
LandValue INT, 
BuildingValue INT, 
TotalValue INT, 
YearBuilt INT, 
Bedrooms INT, 
FullBath INT, 
HalfBath INT
);

-- Loading data from my CSVs in the repository into my MySQL DB
LOAD DATA LOCAL INFILE 'C:/Users/Dillon/Documents/Coding Learning/Projects/nashville_housing/Nashville Housing Data for Data Cleaning.csv'
INTO TABLE nash_housing
COLUMNS TERMINATED BY ','
IGNORE 1 LINES;