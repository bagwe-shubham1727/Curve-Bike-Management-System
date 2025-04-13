import streamlit as st
from PIL import Image
import cx_Oracle
import os

st.title('Curve Bikes Database Management System')
st.image('CurveBike.jpg')

# Only initialize Oracle client once per session
if 'oracle_client_initialized' not in st.session_state:
    cx_Oracle.init_oracle_client(lib_dir="/Users/suhas/Suhas/Sem2/DMDD/GUI Test/Oracle Instant Client")
    st.session_state.oracle_client_initialized = True

# Set Oracle Wallet path
os.environ['TNS_ADMIN'] = '/Users/suhas/Suhas/Sem2/DMDD/GUI Test/Wallet_Sandbox'

# Oracle connection details
username = 'BikeUser'
password = 'NeuBoston2025#'
dsn = 'sandbox_high' 

# Establish connection
conn = cx_Oracle.connect(user=username, password=password, dsn=dsn)

# Create a cursor
cursor = conn.cursor()
