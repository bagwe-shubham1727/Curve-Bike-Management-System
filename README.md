# Curve-Bike-Management-System

Group Number - 15

Team Members : 
Shubham Bagwe - 002057120
Siddhesh Sawant - 002058340
Omkar Salian - 002050108
Soham Chavan - 002307796


# Project Database Setup

This project involves setting up a database environment with specific user permissions and configurations. Please follow the steps below to ensure the database is configured correctly.

## Prerequisites

- Oracle Database or compatible database environment.
- Access to an SQL client to execute `.sql` files.

## Setup Instructions

### Flow

1. **Run `Admin-CreateUser.sql`**
   - This script sets up the initial configuration by creating new user BikeUser and grants required permissions to the 'BikeUser' user. (Use Admin User)

2. **Run `BikeUser-DDL Script.sql`**
   - This script creates necessary tables. (Use newly created BikeUser)

3. **Run `Admin-GrantBikeUser.sql`**
   - This script grants insert, select, update, delete to 'BikeUser' user. (Use Admin User)

4. **Run `BikeUser-DML Script.sql`**
   - This script inserts data into tables. (Use BikeUser)

5. **Run `BikeUser-Run Package Files`**
   - This script inserts packages for the tables. (Use BikeUser)

6. **Run `Admin-Create Other User roles.sql`**
   - This script create other users and grants then create session and create view permissions. (Use Admin User)

7. **Run `BikeUser-Grant DataViewerUser.sql`**
   - This script grants the neccessary role-specific permissions to the specific user role. (Use BikeUser)

8. **Run `DataViewerUser - Views`**
   - This script creates the role-specific views. (Use DataViewer User)


## Roles

Admin role - System Admin
App Admin role - BikeUser
Business Analyst role - DataViewerUser

## Files for Presentation (Not to be run)
Bike_Maintenance_Test case.sql Customer_PKG_Test_Case.sql DBMS_Scheduler.sql Rental_PKG_Test_Case.sql Reports.sql Testcases.sql

### Notes

- Ensure that each script is run in the specified order to avoid permission issues.
- If any script fails due to missing tables or objects, please check if the previous scripts executed successfully.
- The scripts are designed to handle exceptions for missing tables, so if certain tables are not found, the script will continue without error.

## Troubleshooting

- **Permission Errors:** Ensure that each script is run in the correct order. Missing permissions can result if scripts are run out of sequence.
- **Table Not Found Errors:** If certain tables do not exist, the scripts are designed to skip permissions for them without causing the process to halt.
