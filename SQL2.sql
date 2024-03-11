CREATE TABLE Sign_up (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20)
    
);
INSERT INTO Sign_up (UserID, firstname ,lastname, email ,Password,phonenumber)
 VALUES 
 ("101","sakshi","raut","raut1234@gmail.com","pass@123","123456789");
select*from Sign_up;

create table login(
     Userid int(20) primary key auto_increment,
    username varchar(100) not null,
    password varchar(255) not null
    );
    insert into login(username, password)
    values("sakshi1234","pass@123");
    select*from login;
    
    CREATE TABLE Restaurant (
    restaurant_id INT PRIMARY KEY,
    Name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255),
    opening_hours TIME,
    closing_hours TIME
);

INSERT INTO Restaurant (restaurant_id, name, address, phone_number, email, opening_hours, closing_hours)
VALUES 
(1, 'dakshin Restaurant', '123 Main St, Cityville', '123-456-7890', 'dakshin@example.com', '10:00:00', '21:00:00'),
(2, 'shabari Restaurant', '456 Oak St, Townsville', '987-654-3210', 'shabari@anotherrestaurant.com', '09:00:00', '20:00:00'),
(3, 'empire Restaurant', '123 Main St, Cityville', '123-456-7890', 'empire@example.com', '10:00:00', '21:00:00'),
(4, 'royal castle Restaurant', '456 Oak St, Townsville', '987-654-3210', 'royal castle@anotherrestaurant.com', '09:00:00', '20:00:00'),
(5, 'supreme Restaurant', '123 Main St, Cityville', '123-456-7890', 'supreme@example.com', '10:00:00', '21:00:00'),
(6, 'classio Restaurant', '456 Oak St, Townsville', '987-654-3210', 'classio@anotherrestaurant.com', '09:00:00', '20:00:00'),
(7, 'moonlight Restaurant', '123 Main St, Cityville', '123-456-7890', 'moonligth@example.com', '10:00:00', '21:00:00'),
(8, 'dwarka Restaurant', '456 Oak St, Townsville', '987-654-3210', 'dwarka@anotherrestaurant.com', '09:00:00', '20:00:00');

SELECT * FROM Restaurant;

CREATE TABLE MenuItems (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id),
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    category VARCHAR(50),
    availability BOOLEAN
);
INSERT INTO MenuItems (restaurant_id, name, description, price, category, availability) VALUES
(1, 'Spaghetti Bolognese', 'Classic Italian pasta dish with meat sauce', 12.99, 'Pasta', true),
(2, 'Margherita Pizza', 'Traditional pizza with tomato sauce, mozzarella, and basil', 10.99, 'Pizza', true),
(3, 'Chicken Caesar Salad', 'Grilled chicken breast with romaine lettuce, Caesar dressing, and croutons', 8.99, 'Salad', true),
(4, 'Cheeseburger', 'Beef patty with cheddar cheese, lettuce, tomato, and pickles', 9.99, 'Burger', true);
select*from MenuItems;

 CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20)
);

INSERT INTO Customers (name, email, phone_number) VALUES
('John Doe', 'johndoe@example.com', '123-456-7890');
select*from Customers;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_price DECIMAL(10,2),
    status ENUM('pending', 'in progress', 'completed'),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);
INSERT INTO Orders (customer_id, restaurant_id, order_date, total_price, status)VALUES
(1,1, '01-02-24', '25.99', 'pending'),
(2,2, '02-02-24', '30.99', 'in progress'),
(3,3, '03-02-24', '40.99', 'pending'),
(4,4, '04-02-24', '25.99', 'completed');

select*from Orders;

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)
);


INSERT INTO OrderItems (order_id, item_id, quantity, price) VALUES
(1, 1, 200, 25.00);
select*from OrderItems;

CREATE TABLE Reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    reservation_date DATE,
    reservation_time TIME,
    number_of_people INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

INSERT INTO Reservations (customer_id, restaurant_id, reservation_date, reservation_time, number_of_people) VALUES
(1, 1, '2024-03-10', '19:00:00', 4);
select*from Reservations;

CREATE TABLE TableAvailability (
    availability_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    date DATE,
    time TIME,
    available_tables INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);

INSERT INTO TableAvailability (restaurant_id, date, time, available_tables) VALUES
(1, '2024-03-10', '19:00:00', 10);
select*from TableAvailability;

 

