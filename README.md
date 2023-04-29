# F212 Database Systems Project Cab Booking

## Database Setup
- Download MySQL Community Edition Server from the following link and setup on your device https://dev.mysql.com/downloads/mysql/
- Open the Server in your terminal and execute the Schema.sql file

## Assumptions
- The System works like Uber, you cannot have a driver without a cab or a cab without a driver. There always has to be a driver-cab pair.
- On the basis of practicality it has been assumed that frontend functionality for each of the specific query we have written can not be provided as that would increase the scale of the application by a lot. So the basic functionality which we have implemented includes booking rides and checking ride status, Adding/Removing drivers to the database, and Adding a new type of car. 
- All primary keys begin from one because we have set AUTO_INCREMENT value to 1 for each table;

## ER Diagram
![ER Diagram](Screenshot 2023-04-21 at 12.04.03.png)


## Relational Schema


## Functional Dependency
Functional dependencies can be identified by examining the relationships between attributes in a table. Here are the functional dependencies present in the given schema:

- **User**:
	- user_id -> name, email, phone_number, password, authority
	- email -> user_id
	- phone_number -> user_id
	- Car_Type table:
	- type_id -> passengers_capacity
	
- **Car_Type_Price**:
	- type_id -> price
	- Driver table:
	- driver_id -> type_id, name, email, phone_number, license_plate, status
	- type_id -> passengers_capacity
	
- **Car**:
	- car_id -> type_id, driver_id
	- Rides table:
	- ride_id -> car_id, ride_payment_id, pickup_location, dropoff_location, booking_time, ride_status, rating, price, description
	- car_id -> ride_id
	
- **Payment**:
	- payment_id -> ride_id, gateway, user_id
	- ride_id -> payment_id
	- user_id -> payment_id
	
- **Ride_Payment**:
	- ride_id -> user_id, payment_id
	- user_id -> ride_id
	- payment_id -> ride_id

## Normalization
### 1 NF
To bring the current schema to 1NF, there should be no composite attributes. As this condition is already satisfied, the schema is in 1NF.
### 2 NF
To bring the schema to 2NF, it must satisfy the condition that all non-key attributes in the table are dependent on the entire primary key. As there are no partial dependencies in any of the tables, the schema is already in 2NF.
### 3 NF

- **Step 1**
Identify the functional dependencies (FDs) in the schema.
In this schema, we can identify the following FDs:





## FrontEnd (Swing, Java)
- Ensure that the database has been declared properly and there are no errors.
- Download the jar file provided inside the project folder and execute it.
- Add some dummy data in the database by running the DummyData.sql file provided in the zip file.
- You can now book cab rides as the user and see your ride statuses, you can view all of your ride statuses at once.

We have implemented the front end using the GUI library of Java named Swing. Our application starts at the App.java class which presents two options to choose from, UserLogin or AdminLogin. After logging in to either of them, there will be a unique home page. 
On the User Home Page, you can book a new ride, check the status of all your booked rides, or cancel a ride.
On the Admin Home page, you can view Customer Details, view Driver Details, view Cab-Type Details, Add a new Driver, or Add a new Cab Type.


## Backend (MySQL)
The file Utility.java stores all the backend functions that are required for the processing of data. It has separate functions for each query that needs to be executed on the database.

## Adding Dummy Data to database
- Run the dummydata.sql file to add 10 entries to each table in the database.
