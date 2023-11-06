from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS

app = Flask(_name_)

# Define allowed frontend origins
allowed_origins = [
    "http://127.0.0.1:5500",
    "https://127.0.0.1:5500",
    "http://54.209.168.71",
    "http://10.0.0.1",
    "https://10.0.0.1",
]

# Enable CORS for the specified origins on all routes
CORS(app, resources={r"/*": {"origins": ",".join(allowed_origins)}})

# Replace with your actual MySQL database connection details
db_config = {
    "host": "localhost",
    "user": "dhllc-adm",
    "password": "Abcd12s8rkds!",
    "database": "DHLLC_Portfolio"
}

# Define a route to fetch data from the database for TechStack
@app.route('/techstack')
def techstack():
    # Check if the request is coming from the allowed frontend origins
    if request.referrer not in allowed_origins:
        return "Unauthorized", 403  # Return a 403 Forbidden status

    # Connect to the MySQL database
    db = mysql.connector.connect(**db_config)
    cursor = db.cursor()

    # Execute a query to fetch data (replace with your query)
    cursor.execute("SELECT * FROM TechStack")

    # Fetch all the data
    techstack = cursor.fetchall()

    # Close the cursor and database connection
    cursor.close()
    db.close()

    # Return data as JSON for the frontend
    return jsonify(techstack)

# Define a route to fetch data from the database for AgriBusiness
@app.route('/agribusiness')
def agribusiness():
    # Check if the request is coming from the allowed frontend origins
    if request.referrer not in allowed_origins:
        return "Unauthorized", 403  # Return a 403 Forbidden status

    # Connect to the MySQL database
    db = mysql.connector.connect(**db_config)
    cursor = db.cursor()

    # Execute a query to fetch data (replace with your query)
    cursor.execute("SELECT * FROM AgriBusiness")

    # Fetch all the data
    business = cursor.fetchall()

    # Close the cursor and database connection
    cursor.close()
    db.close()

    # Return data as JSON for the frontend
    return jsonify(business)

# Define a route to fetch data from the database for Financial Advisory
@app.route('/financialadvisory')
def financialadvisory():
    # Check if the request is coming from the allowed frontend origins
    if request.referrer not in allowed_origins:
        return "Unauthorized", 403  # Return a 403 Forbidden status

    # Connect to the MySQL database
    db = mysql.connector.connect(**db_config)
    cursor = db.cursor()

    # Execute a query to fetch data (replace with your query)
    cursor.execute("SELECT * FROM FinancialAdvisory")

    # Fetch all the data
    data = cursor.fetchall()

    # Close the cursor and database connection
    cursor.close()
    db.close()

    # Return data as JSON for the frontend
    return jsonify(data)

if _name_ == '_main_':
    app.run(host='0.0.0.0', port=5000, debug=True)