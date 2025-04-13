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
        cursor.execute("SELECT * FROM ACCESSORY WHERE ITEM_ID = :1", [itemid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['ITEM_ID', 'ITEM_NAME', 'ITEM_COST'])
            st.table(df)
        else:
            st.warning("Accessory not found.")
    except Exception as e:
        st.error(f"Error reading accessory: {e}")

def read_bike_id(bikeid):
    try:
        cursor.execute("SELECT * FROM BIKE WHERE BIKE_ID = :1", [bikeid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['BIKE_ID', 'CURRENT_LOCATION', 'RENTAL_STATUS', 'DOCK_ID', 'MODEL_ID'])
            st.table(df)
        else:
            st.warning("Bike not found.")
    except Exception as e:
        st.error(f"Error reading bike: {e}")

def read_customer_id(custid):
    try:
        cursor.execute("SELECT * FROM CUSTOMER WHERE CUSTOMER_ID = :1", [custid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=[
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
        cursor.execute("SELECT * FROM DOCKS WHERE DOCK_ID = :1", [dockid])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=['DOCK_ID', 'DOCK_NAME', 'DOCK_LOCATION', 'BIKE_CAPACITY', 'BIKE_AVAILABLE', 'EMPLOYEE_ID'])
            st.table(df)
        else:
            st.warning("Dock not found.")
    except Exception as e:
        st.error(f"Error reading dock: {e}")

def view_employee_id(employee_id):
    try:
        cursor.execute("SELECT * FROM EMPLOYEE WHERE EMPLOYEE_ID = :1", [employee_id])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=[
                'EMPLOYEE_ID', 'FIRST_NAME', 'LAST_NAME', 'EMAIL', 'PHONE',
                'STREET_ADDRESS', 'HOUSE_NUMBER', 'CITY', 'STATE_CODE', 'ZIP', 'GENDER', 'DESIGNATION'
            ])
            st.table(df)
        else:
            st.warning("Employee not found.")
    except Exception as e:
        st.error(f"Error reading employee: {e}")

def read_rental_id(rental_id):
    try:
        cursor.execute("SELECT * FROM RENTAL WHERE RENTAL_ID = :1", [rental_id])
        result = cursor.fetchone()
        if result:
            df = pd.DataFrame([list(result)], columns=[
                'RENTAL_ID', 'CUSTOMER_ID', 'BIKE_ID', 'TRANSACTION_ID', 'START_DOCK_ID',
                'END_DOCK_ID', 'START_DATE_TIME', 'END_DATE_TIME', 'RENTAL_TIME'
            ])
            st.table(df)
        else:
            st.warning("Rental not found.")
    except Exception as e:
        st.error(f"Error reading rental: {e}")

def read_accessory():
    try:
        cursor.execute("SELECT * FROM ACCESSORY")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['ITEM_ID', 'ITEM_NAME', 'ITEM_COST'])
            st.table(df)
        else:
            st.warning("Accessory not found.")
    except Exception as e:
        st.error(f"Error reading accessory: {e}")

def read_bike():
    try:
        cursor.execute("SELECT * FROM BIKE")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['BIKE_ID', 'CURRENT_LOCATION', 'RENTAL_STATUS', 'DOCK_ID', 'MODEL_ID'])
            st.table(df)
        else:
            st.warning("Bike not found.")
    except Exception as e:
        st.error(f"Error reading bike: {e}")

def read_customer():
    try:
        cursor.execute("SELECT * FROM CUSTOMER")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['CUSTOMER_ID', 'FIRST_NAME', 'LAST_NAME', 'EMAIL', 'CUST_PASSWORD',
                'PHONE', 'STREET_ADDRESS', 'HOUSE_NUMBER', 'CITY', 'STATE_CODE', 'ZIP'])
            st.table(df)
        else:
            st.warning("Customer not found.")
    except Exception as e:
        st.error(f"Error reading customer: {e}")

def read_dock():
    try:
        cursor.execute("SELECT * FROM DOCKS")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['DOCK_ID', 'DOCK_NAME', 'DOCK_LOCATION', 'BIKE_CAPACITY', 'BIKE_AVAILABLE', 'EMPLOYEE_ID'])
            st.table(df)
        else:
            st.warning("Dock not found.")
    except Exception as e:
        st.error(f"Error reading dock: {e}")

def view_employee():
    try:
        cursor.execute("SELECT * FROM EMPLOYEE")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['EMPLOYEE_ID', 'FIRST_NAME', 'LAST_NAME', 'EMAIL', 'PHONE', 'STREET_ADDRESS', 'HOUSE_NUMBER', 'CITY', 'STATE_CODE', 'ZIP', 'GENDER', 'DESIGNATION'])
            st.table(df)
        else:
            st.warning("Employee not found.")
    except Exception as e:
        st.error(f"Error reading employee: {e}")

def read_transaction():
    try:
        cursor.execute("SELECT * FROM PAYMENT_DETAILS")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['TRANSACTION_ID', 'CUSTOMER_ID', 'DATE_TIME', 'PAYMENT_METHOD'])
            st.table(df)
        else:
            st.warning("Payment Details not found.")
    except Exception as e:
        st.error(f"Error reading Payment Details: {e}")

def read_bike_model():
    try:
        cursor.execute("SELECT * FROM BIKE_MODEL")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['MODEL_ID', 'BIKE_BRAND_NAME', 'BIKE_MODEL_NAME'])
            st.table(df)
        else:
            st.warning("BikeModel not found.")
    except Exception as e:
        st.error(f"Error reading BikeModel: {e}")

def read_maintenance():
    try:
        cursor.execute("SELECT * FROM MAINTENANCE")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['MAINTENANCE_ID', 'DATE_TIME', 'MAINTENANCE_DESCRIPTION', 'REPAIR_COST', 'BIKE_ID', 'EMPLOYEE_ID'])
            st.table(df)
        else:
            st.warning("Maintenance not found.")
    except Exception as e:
        st.error(f"Error reading Maintenance: {e}")

def read_rental():
    try:
        cursor.execute("SELECT * FROM RENTAL")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['RENTAL_ID', 'CUSTOMER_ID', 'BIKE_ID', 'TRANSACTION_ID', 'START_DOCK_ID', 'END_DOCK_ID', 'START_DATE_TIME', 'END_DATE_TIME', 'RENTAL_TIME'])
            st.table(df)
        else:
            st.warning("Rental not found.")
    except Exception as e:
        st.error(f"Error reading Rental: {e}")

def read_bike_accessory():
    try:
        cursor.execute("SELECT * FROM BIKE_ACCESSORY")
        data = cursor.fetchall()
        if data:
            df = pd.DataFrame([list(row) for row in data], columns=['ITEM_ID', 'BIKE_ID'])
            st.table(df)
        else:
            st.warning("BikeAccessory not found.")
    except Exception as e:
        st.error(f"Error reading BikeAccessory: {e}")

option = st.selectbox("Select a table", ("Select", "Accessory", "Bike", "Customer", "Dock", "Employee", "Payment Details", "BikeModel", "Maintenance", "Rental", "BikeAccessory"))

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

elif option == "Payment Details":
    read_transaction()

elif option == "BikeModel":
    read_bike_model()

elif option == "Maintenance":
    read_maintenance()

elif option == "Rental":
    read_rental()
    rental_id = st.text_input("Enter Rental ID to view:")
    if st.button("View Rental"):
        read_rental_id(rental_id)

elif option == "BikeAccessory":
    read_bike_accessory()