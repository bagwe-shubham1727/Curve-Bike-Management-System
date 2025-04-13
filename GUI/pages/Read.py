import streamlit as st
import pandas as pd
import cx_Oracle
import os

# Oracle connection details
username = 'BikeUser'
password = 'NeuBoston2025#'
dsn = 'sandbox_high'

# Establish connection
conn = cx_Oracle.connect(user=username, password=password, dsn=dsn)

# Create a cursor
cursor = conn.cursor()

st.title('Curve Bikes Database Management System')
st.subheader('Read Operation')

def read_accessory_id(itemid):
    try:
        cursor.execute("SELECT * FROM Accessory WHERE ItemID = :1", [itemid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['ItemID', 'ItemName', 'ItemCost', 'ItemCount'])
            st.table(df)
        else:
            st.warning("Accessory not found.")
    except Exception as e:
        st.error(f"Error reading accessory: {e}")

def read_bike_id(bikeid):
    try:
        cursor.execute("SELECT * FROM Bike WHERE BikeID = :1", [bikeid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['BikeID', 'BikeModelID', 'DockID', 'BikeLocation', 'BikeRentalStatus'])
            st.table(df)
        else:
            st.warning("Bike not found.")
    except Exception as e:
        st.error(f"Error reading bike: {e}")

def read_customer_id(custid):
    try:
        cursor.execute("SELECT * FROM Customer WHERE CUSTOMER_ID = :1", [custid])
        row = cursor.fetchone()
        if row:
            df = pd.DataFrame([list(row)], columns=[
                'CUSTOMER_ID', 'FIRST_NAME', 'LAST_NAME', 'EMAIL', 'CUST_PASSWORD',
                'PHONE', 'STREET_ADDRESS', 'HOUSE_NUMBER', 'CITY', 'STATE_CODE', 'ZIP'
            ])
            st.table(df)
        else:
            st.warning("Customer not found.")
    except Exception as e:
        st.error(f"Error reading customer: {e}")


def read_dock_id(dockid):
    try:
        cursor.execute("SELECT * FROM Dock WHERE DockID = :1", [dockid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['DockID', 'EmployeeID', 'DockName', 'DockLocation', 'BikeCapacity','BikeAvailable', 'AvailableSpots'])
            st.table(df)
        else:
            st.warning("Dock not found.")
    except Exception as e:
        st.error(f"Error reading dock: {e}")

def view_employee_id(employee_id):
    try:
        cursor.execute("SELECT * FROM Employee WHERE EmployeeID = :1", [employee_id])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['EmployeeID', 'EmpFName', 'EmpLName', 'EmpEmail', 'EmpPhone', 'EmpStreetAddress', 'EmpHouseNo', 'EmpCity', 'EmpState', 'EmpZIP', 'EmpGender', 'EmpDesignation'])
            st.table(df)
        else:
            st.warning("Employee not found.")
    except Exception as e:
        st.error(f"Error reading employee: {e}")

def read_accessory():
    try:
        cursor.execute("SELECT * FROM Accessory")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['ItemID', 'ItemName', 'ItemCost', 'ItemCount'])
            st.table(df)
        else:
            st.warning("Accessory not found.")
    except Exception as e:
        st.error(f"Error reading accessory: {e}")

def read_bike():
    try:
        cursor.execute("SELECT * FROM Bike")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['BikeID', 'BikeModelID', 'DockID', 'BikeLocation', 'BikeRentalStatus'])
            st.table(df)
        else:
            st.warning("Bike not found.")
    except Exception as e:
        st.error(f"Error reading bike: {e}")

def read_customer():
    try:
        cursor.execute("SELECT * FROM Customer")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['CustomerID', 'CustFName', 'CustLName', 'CustEmail', 'CustPassword', 'CustPhone', 'CustStreetAddress', 'CustHouseNo', 'CustCity', 'CustState', 'CustZIP'])
            st.table(df)
        else:
            st.warning("Customer not found.")
    except Exception as e:
        st.error(f"Error reading customer: {e}")

def read_dock():
    try:
        cursor.execute("SELECT * FROM Dock")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['DockID', 'EmployeeID', 'DockName', 'DockLocation', 'BikeCapacity','BikeAvailable', 'AvailableSpots'])
            st.table(df)
        else:
            st.warning("Dock not found.")
    except Exception as e:
        st.error(f"Error reading dock: {e}")

def view_employee():
    try:
        cursor.execute("SELECT * FROM Employee")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['EmployeeID', 'EmpFName', 'EmpLName', 'EmpEmail', 'EmpPhone', 'EmpStreetAddress', 'EmpHouseNo', 'EmpCity', 'EmpState', 'EmpZIP', 'EmpGender', 'EmpDesignation'])
            st.table(df)
        else:
            st.warning("Employee not found.")
    except Exception as e:
        st.error(f"Error reading employee: {e}")

def read_payment_method():
    try:
        cursor.execute("SELECT * FROM PaymentMethod")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['PaymentID', 'CustomerID', 'PaymentType'])
            st.table(df)
        else:
            st.warning("PaymentMethod not found.")
    except Exception as e:
        st.error(f"Error reading PaymentMethod: {e}")

def read_bank_account():
    try:
        cursor.execute("SELECT * FROM BankAccountPayment")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['PaymentID', 'BankAccFName', 'BankAccLName', 'AccountNumber', 'RoutingNumber', 'AccountType'])
            st.table(df)
        else:
            st.warning("BankAccountPayment not found.")
    except Exception as e:
        st.error(f"Error reading BankAccountPayment: {e}")

def read_transaction():
    try:
        cursor.execute("SELECT * FROM Transaction")  # Don't use [Transaction] in Oracle
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['TransactionID', 'CustomerID', 'PaymentID', 'TransactionDateTime', 'RentDuration', 'TransactionCost'])
            st.table(df)
        else:
            st.warning("Transaction not found.")
    except Exception as e:
        st.error(f"Error reading Transaction: {e}")

def read_bike_model():
    try:
        cursor.execute("SELECT * FROM BikeModel")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['Bike ID', 'BikeBrandName', 'BikeModelName'])
            st.table(df)
        else:
            st.warning("BikeModel not found.")
    except Exception as e:
        st.error(f"Error reading BikeModel: {e}")

def read_maintenance():
    try:
        cursor.execute("SELECT * FROM Maintenance")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['MaintenanceID', 'BikeID', 'EmployeeID', 'MaintenanceDateTime', 'MaintenanceDescription', 'MaintenanceCost'])
            st.table(df)
        else:
            st.warning("Maintenance not found.")
    except Exception as e:
        st.error(f"Error reading Maintenance: {e}")

def read_rental():
    try:
        cursor.execute("SELECT * FROM Rental")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['RentalID', 'CustomerID', 'BikeID', 'TransactionID', 'StartDockID', 'EndDockID', 'StartDateTime', 'EndDateTime', 'RentalTime'])
            st.table(df)
        else:
            st.warning("Rental not found.")
    except Exception as e:
        st.error(f"Error reading Rental: {e}")

def read_bike_accessory():
    try:
        cursor.execute("SELECT * FROM Bike_Accessory")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['BikeID', 'ItemID'])
            st.table(df)
        else:
            st.warning("BikeAccessory not found.")
    except Exception as e:
        st.error(f"Error reading BikeAccessory: {e}")

# Dropdown + input for entity-specific view
option = st.selectbox("Select a table", ("Select", "Accessory", "Bike", "Customer", "Dock", "Employee", "PaymentMethod", "BankAccountPayment", "Transaction", "BikeModel", "Maintenance", "Rental", "BikeAccessory"))

if option == "Accessory":
    read_accessory()
    itemid = st.number_input("Enter Item ID to read:", min_value=1001)
    if st.button("View Accessory"):
        read_accessory_id(itemid)

elif option == "Bike":
    read_bike()
    bikeid = st.text_input("Enter Bike ID to read:")
    if st.button("View Bike"):
        read_bike_id(bikeid)

elif option == "Customer":
    read_customer()
    custid = st.text_input("Enter Customer ID to read:")
    if st.button("View Customer"):
        read_customer_id(custid)

elif option == "Dock":
    read_dock()
    dockid = st.text_input("Enter Dock ID to read:")
    if st.button("View Dock"):
        read_dock_id(dockid)

elif option == "Employee":
    view_employee()
    employee_id = st.text_input("Enter Employee ID to read:")
    if st.button("View"):
        view_employee_id(employee_id)

elif option == "PaymentMethod":
    read_payment_method()

elif option == "BankAccountPayment":
    read_bank_account()

elif option == "Transaction":
    read_transaction()

elif option == "BikeModel":
    read_bike_model()

elif option == "Maintenance":
    read_maintenance()

elif option == "Rental":
    read_rental()

elif option == "BikeAccessory":
    read_bike_accessory()
