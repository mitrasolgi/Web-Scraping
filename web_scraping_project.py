import requests
import pymysql
from bs4 import BeautifulSoup

# Connecting to the MySQL database
db = pymysql.connect(host='127.0.0.1', user='root', port=3306, db='truecardb')
cursor = db.cursor()

# Prompt user to input the car model they are searching for
model = input("Enter the car model: ")

# Construct the URL to scrape the data for the specified car model
url = "https://www.truecar.com/used-cars-for-sale/listings/" + model

# Send an HTTP GET request to the URL
response = requests.get(url)

# Parse the HTML content of the page using BeautifulSoup
soup = BeautifulSoup(response.text, "html.parser")

# Find all the car listings on the page
lis_tags = soup.findAll("div", {"class": "card-content vehicle-card-body"})

# Loop through the first 20 car listings
for li_tag in lis_tags[:20]:
    # Extract the price information from the listing
    price_div = li_tag.find("div", {"class": "padding-left-3 vehicle-card-bottom-pricing-secondary vehicle-card-bottom-max-50"})
    price_data = price_div.find("h4", {"class": "heading-3 margin-y-1 font-weight-bold"})
    
    # Extract the mileage information from the listing
    mileage_div = li_tag.find("div", {"class": "margin-top-2_5 padding-top-2_5 border-top w-100"})
    mileage_data = mileage_div.find("div", {"class": "font-size-1 text-truncate"})

    # Insert each car's price and mileage into the MySQL database
    sql = "INSERT INTO truecardb.car_info(price, mileage) VALUES (%s, %s)"
    cursor.execute(sql, (price_data.text, mileage_data.text))

# Close the cursor
cursor.close()

# Commit the transaction to ensure the data is saved in the database
db.commit()

# Close the database connection
db.close()
