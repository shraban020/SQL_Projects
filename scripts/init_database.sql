/*
=============================================================================
Cretae Database and Schemas
=============================================================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists it is dropped and recreateds. Additionally, the script sets up three schemas
	within the databse: 'bronze', 'silver', and 'gold'

Warning:
	Running this script will drop the entire 'DataWarehouse' databse if exists.
	All data in database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running the scripts
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
   ALTER DATABASE DataWarehous SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END;
GO


-- Create  Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO


USE DataWarehouse;
GO

-- Cretae Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO