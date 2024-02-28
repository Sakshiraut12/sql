create database restaurant;
use restaurant;

create table MENU(
	Name varchar(100) NOT NULL,
	Price varchar(20) NOT NULL,	
	Type varchar(20) DEFAULT NULL,
	Category varchar(30) NOT NULL,
	PRIMARY KEY(Name)
);
insert into MENU (name,price,type,category)values("paneer 65","110","Veg","Starters");
insert into MENU values("veg lollipop","100","Veg","Starters");
insert into MENU values("kati roll","90","Veg","Starters");
insert into MENU values("spring roll","80","Veg","Starters");
insert into MENU values("Vegetable Pakora","70","Veg","Starters");
insert into MENU values("Vegetable Samosa","90","Veg","Starters");
insert into MENU values("Onion Bhaji ","70","Veg","Starters");
insert into MENU values("Potato and Mushroom Chaat","100","Veg","Starters");
insert into MENU values("Mushroom Garlic Fry","1100","Veg","Starters");
insert into MENU values("Tandoori Chicken","1500","Non-Veg","Starters");
insert into MENU values("Chicken Garlic Fry","180","Non-Veg","Starters");
insert into MENU values("Chicken Tikka on Puree","180","Non-Veg","Starters");
insert into MENU values("Lamb Tikka","160","Non-Veg","Starters");
insert into MENU values("Tandoori King Prawn","185","Non-Veg","SeaFood");
insert into MENU values("King Prawn Rosun","185","Non-Veg","SeaFood");
insert into MENU values("King Prawn on Puree","200","Non-Veg","SeaFood");
insert into MENU values("Prawn Bhuna on Puree","210","Non-Veg","SeaFood");
insert into MENU values("Prawn Cocktail","220","Non-Veg","SeaFood");
insert into MENU values("Chi/Lam Sashlik Chi","190","Non-Veg","Tandoori Specials");
insert into MENU values("Tandoori Deluxe","180","Non-Veg","Tandoori Specials");
insert into MENU values("Tandoori Chicken Main","170","Non-Veg","Tandoori Specials");
insert into MENU values("Chicken Tikka","220","Non-Veg","Tandoori Specials");
insert into MENU values("Bombay Aloo ","180","Veg","Vegetable Dishes");
insert into MENU values("Mushroom Bhaji ","190","Veg","Vegetable Dishes");
insert into MENU values("Saag Dall","90","Veg","Vegetable Dishes");
insert into MENU values("veg handi","150","Veg","Vegetable Dishes");
insert into MENU values("shev bhaji","90","Veg","Vegetable Dishes");
insert into MENU values("veg maratha","110","Veg","Vegetable Dishes");
insert into MENU values("veg angara","100","Veg","Vegetable Dishes");
insert into MENU values("paneer tikka butter masala","150","Veg","Vegetable Dishes");
insert into MENU values("palak paneer","150","Veg","Vegetable Dishes");
insert into MENU values("dal makhani","150","Veg","Vegetable Dishes");
insert into MENU values("Mattor Paneer","140","Veg","Vegetable Dishes");
insert into MENU values("Vegetable Roshun","110","Veg","Vegetable Dishes");
insert into MENU values(" Rice","100","Veg","Side Orders - Rice");
insert into MENU values("Keema  Rice","100","Non-Veg","Side Orders - Rice");
insert into MENU values("Mushroom Rice","120","Veg","Side Orders - Rice");
insert into MENU values("Garlic Naan","20","Veg","Side Orders - Bread");
insert into MENU values("Stuffed Naan","30","Veg","Side Orders - Bread");
insert into MENU values("Chapati","10","Veg","Side Orders - Bread");
insert into MENU values("Green Salad","100","Veg","Side Orders - Sundries");
insert into MENU values("Spice Popadum","80","Veg","Side Orders - Sundries");
insert into MENU values("Chutney","70","Veg","Side Orders - Sundries");
insert into MENU values("Ras Malai","95","Veg","Dessert");
insert into MENU values("Ice Cream","55","Veg","Dessert");
insert into MENU values("Gulab Jamun","65","Veg","Dessert");
insert into MENU values("Kulfi","45","Veg","Dessert");
insert into MENU values("Kheer","95","Veg","Dessert");
select*from menu;

create table INVENTORY(
	Stock_Id varchar(5) NOT NULL,
	Name varchar(30) NOT NULL,
	Quantity_in_kg varchar(2) NOT NULL,	
	Description varchar(100) DEFAULT NULL,
	Supp_Name varchar(50) NOT NULL,
	PRIMARY KEY(Stock_Id)
);
insert into INVENTORY values("1","Tomato","10","Fruit"," Fruits");
insert into INVENTORY values("2","Lemon","3","Fruit"," Fruits");
insert into INVENTORY values("3","Watermelon","5","Fruit","Fruits");
insert into INVENTORY values("4","Carrot","2","Vegetable"," Vegetables");
insert into INVENTORY values("5","Brocolli","3","Vegetable"," Vegetables");
insert into INVENTORY values("6","Cauliflower","4","Vegetable"," Vegetables");
insert into INVENTORY values("7","Onion","20","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("8","Potato","20","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("9","Red Pepper","15","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("10","Cabbage","10","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("11","Garlic","10","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("12","Coriander","5","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("13","Green Peas","7","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("14","Green Pepper","6","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("15","Cinnamon","6","Vegetable","Shyamlal Vegetables");
insert into INVENTORY values("16","Mushrooms","3","Vegetable","Shyamlal Vegetables");
select*from INVENTORY;

create table Employee (
	Name varchar(100) NOT NULL,
	Salary varchar(20) NOT NULL,	
	Employee_Id varchar(20) NOT NULL,
	Post varchar(30),
	Date_of_joining date NOT NULL,
	Contact_Number varchar(15) NOT NULL,
	PRIMARY KEY (Employee_Id)
);
insert into Employee values("Devesh","40000","1001","Waiter","2018-03-18","8992739338");
insert into Employee values("Salman","30000","1002","Waiter","2018-02-15","1234567891");
insert into Employee values("Shahrukh","80000","1003","Waiter","2018-07-26","9283745821");
insert into Employee values("Jinal","60000","1005","Cook","2018-06-21","8852761538");
insert into Employee values("Sehwag","60000","1006","Cook","2018-04-30","9182739338");
insert into Employee values("Vijay","78000","1008","Cook","2018-01-10","9878987220");
insert into Employee values("Piyush","70000","1010","Cleaner","2018-06-18","9726391832");
insert into Employee values("Kuldeep","19000","1011","Cashier","2018-12-19","9817283829");
insert into Employee values("Chahal","48000","1012","Cashier","2018-03-29","9002938465");
select*from Employee;

create table CUSTOMER(
	Customer_Id int NOT NULL AUTO_INCREMENT,
	Fname varchar(15) NOT NULL,
	Lname varchar(15) NOT NULL,
	Contact varchar(20) NOT NULL,
	Email_Id varchar(50) NOT NULL,
	PRIMARY KEY (Customer_Id)
);
insert into CUSTOMER values("1","Arpit","Sharma","9767938912","arpit.sharma@sfit.engg.org");
insert into CUSTOMER values("2","Yash","Shah","9244889374","yash.shah@sfit.engg.org");
insert into CUSTOMER values("3","Darshit","Serna","9182234322","darshit.serna@sfit.engg.org");
insert into CUSTOMER values("4","Aditya","Sharma","9938778989","aditya.sharma@sfit.engg.org");
insert into CUSTOMER values("5","Pallav","Shah","9703364932","pallav.shah@sfit.engg.org");
insert into CUSTOMER values("6","Sundar","Pichai","9702714251","sundar.pichai@sfit.engg.org");
insert into CUSTOMER values("7","Sherlock","Holmes","9702734277","sherlock.holmes@sfit.engg.org");
insert into CUSTOMER values("8","Jon","Snow","9725269277","jon.snow@sfit.engg.org");
insert into CUSTOMER values("9","Peter","Parker","8772334277","peter.parker@sfit.engg.org");
insert into CUSTOMER values("10","Jaime","Lannister","9714804277","jaime.lannister@sfit.engg.org");
insert into CUSTOMER values("11","Achintya","Madhav","9910347534","achintya.madhav@sfit.engg.org");
select*from customer;

create table TABLES(
	Table_Number varchar(9) NOT NULL,
	Details varchar(200) DEFAULT NULL,
	Customer_Id int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (Table_Number),
	CONSTRAINT FOREIGN KEY(Customer_ID) REFERENCES CUSTOMER(Customer_ID)
);
insert into TABLES values("1","Capacity 4 People" , "10");
insert into TABLES values("3","Capacity 3 People" , "3");
insert into TABLES values("4","Capacity 2 People", "1");
insert into TABLES values("5","Capacity 8 People Family Table" , "7");
select*from tables;

create table MANAGER(
	Manager_Id int NOT NULL AUTO_INCREMENT,
	Fname varchar(15) NOT NULL,
	Lname varchar(15) NOT NULL,
	Contact varchar(20) NOT NULL,
 	Address varchar(30) DEFAULT NULL,
  	Salary varchar(30) DEFAULT NULL,
	Sex char(1) DEFAULT NULL,
	Bdate date DEFAULT NULL,
	Join_Date date NOT NULL,
	PRIMARY KEY (Manager_Id)
);
insert into MANAGER values("1","Harshit","Parikh","9642540626","Mahavir nagar","150000","M","1999-02-01","2018-08-01");
insert into MANAGER values("2","Murugan","Nadar","9581871321","Nalasopara","100000","M","1998-02-16","2012-08-01");
select*from manager;

create table ORDER1(
	Order_No int NOT NULL AUTO_INCREMENT,
	Customer_Id int NOT NULL,
	Name varchar (100) NOT NULL,
	Quantity double NOT NULL,
	Amount double NOT NULL,
	Name_2 varchar (100),
	Quantity_2 double,
	Amount_2 double,
	Name_3 varchar (100),
	Quantity_3 double,
	Amount_3 double,
	TOTAL_AMOUNT double NOT NULL,
	Date date NOT NULL,
	PRIMARY KEY (Order_No),	
	CONSTRAINT FOREIGN KEY(Customer_ID) REFERENCES CUSTOMER(Customer_ID),
	CONSTRAINT FOREIGN KEY(Name) REFERENCES MENU(Name)
    );
    insert into ORDER1 values("1000","3","Vegetable Pakora","3","9","Onion Bhaji","2","6","Green Salad","1","2","17","2019-04-12");
 insert into ORDER1 values("101","2","Kulfi","2","5.9","Ice Cream","4","11.8","Boiled Rice","2","5","22.7","2019-04-12");
 insert into ORDER1 values("103","11","Chutney","2","1.4","Tandoori Deluxe","1","12.95","Mushroom Rice","1","3.2","17.55","2019-04-11");
 insert into ORDER1 values("105","8","Bombay Aloo","4","26","Kheer","1","2.95","Chapati","3","3","31.95","2019-04-10");
 insert into ORDER1 values("106","5","Saag Dall","1","6.5","Boiled Rice","2","5","Green Salad","1","2","11.5","2019-04-10");
 insert into ORDER1 values("107","3","Vegetable Pakora","3","9","Onion Bhaji","2","6","Green Salad","1","2","9","2019-04-10");
select*from order1;

create table DELIVERY_BOY(
	Delivery_Boy_Id int NOT NULL,
	Fname varchar(15) NOT NULL,
	Lname varchar(15) NOT NULL,
	Contact varchar(20) NOT NULL,
 	Address varchar(30) DEFAULT NULL,
  	Salary varchar(30) DEFAULT NULL,
	Sex char(1) DEFAULT NULL,
	Bdate date DEFAULT NULL,
	Join_Date date NOT NULL,
	Order_No int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (Delivery_Boy_Id),
	CONSTRAINT FOREIGN KEY(ORDER_NO) REFERENCES ORDER1(ORDER_NO)
);

insert into DELIVERY_BOY values("100","Tarang","Goyal","9854133132","Mahavir Nagar","20000","M","1993-02-21","2018-07-05","105");
insert into DELIVERY_BOY values("102","Rajat","Agarwal","9732596509","Satya Nagar","1300","M","1993-06-21","2018-11-13","102");
insert into DELIVERY_BOY values("103","Vidit","Bhaskar","9672344244","Sai Baba Mandir","26000","M","1993-10-22","2018-08-26","107");
select * from  DELIVERY_BOY;

create table payment122(
	Order_No int NOT NULL AUTO_INCREMENT,
	Payment_Method varchar(25) NOT NULL,
	PRIMARY KEY (Order_No),
	Constraint payment_order FOREIGN KEY(Order_No) REFERENCES Order1(Order_No)
    );
    
    
insert into PAYMENT122 values("102","Paytm");
insert into PAYMENT122 values("105","Paytm");
insert into PAYMENT122 values("106","Cash On Delivery");
insert into PAYMENT122 values("103","Cash on Delivery");
select*from payment122;

