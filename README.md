# Curve-Bike-Management-System

Group Number - 15

Team Members : 
Shubham Bagwe - 002057120
Siddhesh Sawant - 002058340
Omkar Salian - 002050108
Soham CHavan - 002307796


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

5. **Run `Admin-Create Other User roles.sql`**
   - This script create other users and grants then create session and create view permissions. (Use Admin User)

6. **Run `BikeUser-Grant DataViewerUser.sql/BikeUser-Grant_QualityAssuranceUser/BikeUser-GrantCustomerUser/BikeUser-GrantOperationsManager`**
   - This script grants the neccessary role-specific permissions to the specific user role. (Use BikeUser)

7. **Run `DataViewerUser - Views/Operations_Manager_Views/QualityAssuranceUser-Views`**
   - This script creates the role-specific views. (Use Designated User)

## Roles

Admin role - System Admin
App Admin role - BikeUser
Business Analyst role - DataViewerUser
User of App - CustomerUser
Operations Manager - OperationsManagerUser
Quality Assurance Employee - QualityAssuranceUser

### Notes

- Ensure that each script is run in the specified order to avoid permission issues.
- If any script fails due to missing tables or objects, please check if the previous scripts executed successfully.
- The scripts are designed to handle exceptions for missing tables, so if certain tables are not found, the script will continue without error.

## Troubleshooting

- **Permission Errors:** Ensure that each script is run in the correct order. Missing permissions can result if scripts are run out of sequence.
- **Table Not Found Errors:** If certain tables do not exist, the scripts are designed to skip permissions for them without causing the process to halt.
