-- Select all records
SELECT *
FROM nashville_housing;

-- Standardize Date Format

-- Select with converted date
SELECT 
    CONVERT(DATE, STR_TO_DATE(SaleDate, '%M %d, %Y')) AS saleDateConverted
FROM 
    nashville_housing;

-- Update the SaleDate column
UPDATE nashville_housing
SET SaleDate = STR_TO_DATE(SaleDate, '%M %d, %Y');

-- ALternative

-- Add a new column
ALTER TABLE nashville_housing
ADD SaleDateConverted DATE;

-- Update the new column
UPDATE nashville_housing
SET SaleDateConverted = STR_TO_DATE(SaleDate, '%M %d, %Y');

-- Populate Property Address data

-- Select all records ordered by ParcelID
SELECT *
FROM nashville_housing
--WHERE PropertyAddress IS NULL
ORDER BY ParcelID;

-- Find matching records
SELECT 
    a.ParcelID, a.PropertyAddress, 
    b.ParcelID, b.PropertyAddress, 
    COALESCE(a.PropertyAddress, b.PropertyAddress) AS PropertyAddress
FROM 
    nashville_housing a
JOIN 
    nashville_housing b
ON 
    a.ParcelID = b.ParcelID
    AND a.UniqueID <> b.UniqueID
WHERE 
    a.PropertyAddress IS NULL;

-- Update records
UPDATE nashville_housing a
JOIN nashville_housing b
ON a.ParcelID = b.ParcelID
AND a.UniqueID <> b.UniqueID
SET a.PropertyAddress = COALESCE(a.PropertyAddress, b.PropertyAddress)
WHERE a.PropertyAddress IS NULL;

-- Breaking out Address into Individual Columns (Address, City, State)

-- Add new columns
ALTER TABLE nashville_housing
ADD COLUMN Address VARCHAR(255),
ADD COLUMN City VARCHAR(255),
ADD COLUMN State VARCHAR(50);

-- Update new columns
UPDATE nashville_housing
SET 
    Address = TRIM(SUBSTRING_INDEX(PropertyAddress, ',', 1)),
    City = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(PropertyAddress, ',', 2), ',', -1)),
    State = TRIM(SUBSTRING_INDEX(PropertyAddress, ',', -1));

-- Split OwnerAddress into Individual Columns

-- Add new columns
ALTER TABLE nashville_housing
ADD COLUMN OwnerSplitAddress VARCHAR(255),
ADD COLUMN OwnerSplitCity VARCHAR(255),
ADD COLUMN OwnerSplitState VARCHAR(50);

-- Update new columns
UPDATE nashville_housing
SET 
    OwnerSplitAddress = TRIM(SUBSTRING_INDEX(OwnerAddress, ',', 1)),
    OwnerSplitCity = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress, ',', 2), ',', -1)),
    OwnerSplitState = TRIM(SUBSTRING_INDEX(OwnerAddress, ',', -1));

-- Change Y and N to Yes and No in "Sold as Vacant" field

-- Select distinct values
SELECT DISTINCT SoldAsVacant, COUNT(SoldAsVacant)
FROM nashville_housing
GROUP BY SoldAsVacant
ORDER BY 2;

-- Select with CASE statement
SELECT SoldAsVacant,
    CASE 
        WHEN SoldAsVacant = 'Y' THEN 'Yes'
        WHEN SoldAsVacant = 'N' THEN 'No'
        ELSE SoldAsVacant
    END AS SoldAsVacantFormatted
FROM nashville_housing;

-- Update column values
UPDATE nashville_housing
SET SoldAsVacant = CASE 
    WHEN SoldAsVacant = 'Y' THEN 'Yes'
    WHEN SoldAsVacant = 'N' THEN 'No'
    ELSE SoldAsVacant
    END;

-- Remove Duplicates

-- Select duplicates using CTE
WITH RowNumCTE AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY ParcelID, PropertyAddress, SalePrice, SaleDate, LegalReference
            ORDER BY UniqueID
        ) AS row_num
    FROM nashville_housing
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
ORDER BY PropertyAddress;

-- Delete Unused Columns

-- Drop columns
ALTER TABLE nashville_housing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate;
