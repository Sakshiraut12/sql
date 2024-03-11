Create database restaurant;
use restaurant;

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
    
    CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Type VARCHAR(100) NOT NULL,
    Mobile VARCHAR(15) NOT NULL
);

INSERT INTO Restaurants (RestaurantID, Name, Address,Type, Mobile)
 VALUES

("1", "shabari", "bhosari","veg", "123-456-7890"),
("2", "atithi", "bhosari","veg", "124-567-7832"),
("3", "sai sager","landewadi","veg", "166-423-3450"),
("4", "sai tarra", "bhosari", "veg","122-336-9870"),
("5", "sai angan", "bhosari", "veg","144-766-4567"),
("6", "shree yash", "bhosari", "veg","123-654-2230"),
("7", "sonali", "bhosari","veg", "143-886-9990"),
("8", "vishwavilas", "bhosari","veg\nonveg", "165-345-7890"),
("9", "vaishala", " pimpri","veg", "112-456-1230"),
("10", "dakshin", "pimpri","veg\nonveg", "177-456-8790"),
("11", "empire", "pimpri","veg\nonveg", "123-876-1230"),
("12", "royal castle", "nonveg","pimpri", "187-498-4320"),
("13", "golden curry", "chikali","veg\nonveg", "103-409-5040"),
("14", "supreme", "morewadi", "veg\nonveg","130-126-7090"),
("15", "classio", "moshi", "veg\nonveg","145-056-0890"),
("16", "moonlight", "moshi","veg", "176-946-0190"),
("17", "rajwada", "Alandi", "veg\nonveg","198-546-1390"),
("18", "ashoka", "alandi","veg", "187-765-4321"),
("19", "dwarka", "Alandi", "veg","143-346-7670"),
("20", "neelam", "Alandi", "veg","123-450-5550");
select*from restaurants;

CREATE TABLE shabarimenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO shabarimenu (DishID, DishName, Category, Price )
VALUES
             
    ("1", "spring roll", "staters"," 120" ),
    ("2", "aloo tikka","starters", "80 "),
    ("3", " Stuffed Mushrooms","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "seekh kebab", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "cheese balls", "starters", "180 "),
    ("9", "tandoori broccoli", "starters", "210" ),
    ("10", "paneer butter masala ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " matar paneer ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "malai kofta", "main course", "210" ),
    ("16", "rajma", "main course", "120 "),
    ("17", "bhindi masala", "main course", "110" ),
    ("18", "mushroom", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "paneer mushroom", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "veg handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "mix veg", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "chocolate lava", "dessert", "100" ),
    ("41", "pudding", "dessert", "60" ),
    ("44", "chocolate mousse", "dessert", "90" );
    
    select*from shabarimenu;
    
    CREATE TABLE AtithiMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);
INSERT INTO AtithiMenu (DishID, DishName, Category, Price )
VALUES
("1", "veg lollypop", "starters"," 250.00"),
("2", "veg 65", "starters"," 220.00"),
("3", "soya chaap", "starters"," 240.00"),
("4", "paneer 65", "starters"," 280.00"),
("5", "mushroom chilly", "starters"," 245.00"),
("6", "spring roll", "starters"," 220.00"),
("7", "aloo tikka","starters", "180.00"),
("8", " Stuffed Mushrooms","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "260.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "cheese balls", "starters", "280.00 "),
("14", "tandoori broccoli", "starters", "290.00"),
("15", "paneer butter masala ", "main course", "255.00"),
("16", "palak paneer ", "main course","250.00"),
("17", "kadai paneer", "main course", "270.00"),
("18", " matar paneer ", "main course", "380.00"),
("19", "paneer tikka", "main course", "290.00"),
("20", "malai kofta", "main course", "310.00"),
("21", "rajma", "main course", "290.00"),
("22", "bhindi masala", "main course", "220.00"),
("23", "mushroom", "main course", "350.00"),
("24", "kaju matter", "main course", "400.00"),
("25", "paneer mushroom", "main course", "330.00"),
("26", "mushroom tikka", "main course", "440.00"),
("27", "veg handi", "main course", "330.00"),
("28", "veg maratha", "main coures", "320.00"),
("29", "veg kolhapuri","main coures", "310.00"),
("30", "mix veg", "main coures","310.00"),
("31", "rice", "main course", "310.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "veg pulao", "main coures", "110.00"),
("34", "paneer pulao", "main coures", "110.00"),
("35", "kaju pulao", "main coures", "110.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "dal makkhani", "main coures", "110.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from AtithiMenu;

CREATE TABLE Sai_sagerMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);
INSERT INTO Sai_sagerMenu(DishID, DishName, Category, Price )
VALUES
("1", "mashroom tikka", "starters"," 150.00"),
("2", "veg 65", "starters"," 120.00"),
("3", "aloo tikka", "starters"," 140.00"),
("4", "paneer 65", "starters"," 280.00"),
("5", "mushroom chilly", "starters"," 145.00"),
("6", "paneer kabab", "starters"," 120.00"),
("7", "gobi 65","starters", "180.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "paneer butter masala ", "main course", "255.00"),
("16", "palak paneer ", "main course","150.00"),
("17", "kadai paneer", "main course", "170.00"),
("18", " matar paneer ", "main course", "180.00"),
("19", "paneer tikka", "main course", "190.00"),
("20", "malai kofta", "main course", "110.00"),
("21", "veg afgani", "main course", "190.00"),
("22", "veg angara ", "main course", "120.00"),
("23", "mushroom", "main course", "150.00"),
("24", "kaju matter", "main course", "100.00"),
("25", "malvani handi", "main course", "130.00"),
("26", "mushroom tikka", "main course", "140.00"),
("27", "veg kurma", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "mix veg", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "curd rice", "main coures", "110.00"),
("34", "paneer pulao", "main coures", "110.00"),
("35", "dalkhichadi", "main coures", "110.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "dal makkhani", "main coures", "110.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from Sai_sagerMenu;

CREATE TABLE Sai_tarraMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO Sai_tarraMenu (DishID, DishName, Category, Price )
VALUES
("1", "spring roll", "starters"," 120" ),
    ("2", "paneer 65","starters", "180 "),
    ("3", " Stuffed Mushrooms","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "seekh kebab", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "mushroom 65", "starters", "180 "),
    ("9", "mushroom tikka", "starters", "210" ),
    ("10", "paneer butter masala ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " matar paneer ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "malai kofta", "main course", "210" ),
    ("16", "rajma", "main course", "120 "),
    ("17", "bhindi masala", "main course", "110" ),
    ("18", "mushroom", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "paneer mushroom", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "veg handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "mix veg", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "chocolate lava", "dessert", "100" ),
    ("41", "pudding", "dessert", "60" );
    select*from Sai_tarraMenu;
    
    
    CREATE TABLE Sai_anganMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO Sai_anganMenu (DishID, DishName, Category, Price )
VALUES
("1", "spring roll", "starters"," 120" ),
    ("2", "paneer 65","starters", "180 "),
    ("3", " Stuffed Mushrooms","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "seekh kebab", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "mushroom 65", "starters", "180 "),
    ("9", "mushroom tikka", "starters", "210" ),
    ("10", "paneer butter masala ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " matar paneer ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "bhendi fry", "main course", "210" ),
    ("16", "alu mutter", "main course", "120 "),
    ("17", "bhendi masala", "main course", "110" ),
    ("18", "mushroom butter masala", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "mushroom maratha", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "mushroom handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "alu jeera", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "matka kulfi", "dessert", "100" ),
    ("41", "dry fruit punch", "dessert", "60" );
    select*from  Sai_anganMenu;
    
    CREATE TABLE shree_yashMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO shree_yashMenu (DishID, DishName, Category, Price )
VALUES
("1", "spring roll", "starters"," 120" ),
    ("2", "paneer 65","starters", "180 "),
    ("3", " Stuffed Mushrooms","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "seekh kebab", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "mushroom 65", "starters", "180 "),
    ("9", "mushroom tikka", "starters", "210" ),
    ("10", "sev bhaji  ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " tava masala chaap ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "bhendi fry", "main course", "210" ),
    ("16", "alu mutter", "main course", "120 "),
    ("17", "bhendi masala", "main course", "110" ),
    ("18", "mmix veg", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "mushroom maratha", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "mushroom handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "alu jeera", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "matka kulfi", "dessert", "100" ),
    ("41", "dry fruit punch", "dessert", "60" );
    select*from shree_yashMenu;
    
     CREATE TABLE SonaliMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO SonaliMenu (DishID, DishName, Category, Price )
VALUES
("1", "paneer sizzler", "starters"," 120" ),
    ("2", "paneer 65","starters", "180 "),
    ("3", " veg chilly","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "paneer chilly", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "paneer crispy", "starters", "180 "),
    ("9", "mashroom chilly", "starters", "210" ),
    ("10", "sev bhaji  ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " tava masala chaap ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "veg jaipuri", "main course", "210" ),
    ("16", "veg tiranga", "main course", "120 "),
    ("17", "bhendi masala", "main course", "110" ),
    ("18", "mix veg", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "mushroom maratha", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "mushroom handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "alu gobi masala", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "matka kulfi", "dessert", "100" ),
    ("41", "dry fruit punch", "dessert", "60" );
    select*from SonaliMenu;
    
    CREATE TABLE VishwavilasMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);
INSERT INTO VishwavilasMenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "prawns", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "fish fry","nonveg starters", "380.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken hand ","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "fish curry", "nonveg main course", "310.00"),
("21", "fish masala", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "egg fried rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from VishwavilasMenu;

CREATE TABLE VaishalaMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO VaishalaMenu (DishID, DishName, Category, Price )
VALUES
("1", "veg lollypop", "starters"," 250.00"),
("2", "veg 65", "starters"," 220.00"),
("3", "soya chaap", "starters"," 240.00"),
("4", "paneer 65", "starters"," 280.00"),
("5", "mushroom chilly", "starters"," 245.00"),
("6", "spring roll", "starters"," 220.00"),
("7", "aloo tikka","starters", "180.00"),
("8", " Stuffed Mushrooms","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "260.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "cheese balls", "starters", "280.00 "),
("14", "tandoori broccoli", "starters", "290.00"),
("15", "paneer butter masala ", "main course", "255.00"),
("16", "palak paneer ", "main course","250.00"),
("17", "kadai paneer", "main course", "270.00"),
("18", " matar paneer ", "main course", "380.00"),
("19", "paneer tikka", "main course", "290.00"),
("20", "malai kofta", "main course", "310.00"),
("21", "rajma", "main course", "290.00"),
("22", "bhindi masala", "main course", "220.00"),
("23", "mushroom", "main course", "350.00"),
("24", "kaju matter", "main course", "400.00"),
("25", "paneer mushroom", "main course", "330.00"),
("26", "mushroom tikka", "main course", "440.00"),
("27", "veg handi", "main course", "330.00"),
("28", "veg maratha", "main coures", "320.00"),
("29", "veg kolhapuri","main coures", "310.00"),
("30", "mix veg", "main coures","310.00"),
("31", "rice", "main course", "310.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "veg pulao", "main coures", "110.00"),
("34", "paneer pulao", "main coures", "110.00"),
("35", "kaju pulao", "main coures", "110.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "dal makkhani", "main coures", "110.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "vanilla with hot chocolate sauce", "dessert", "150.00"),
("45", "fruit salad with ice cream", "dessert", "200.00"),
("46", "gulab jamun", "dessert", "160.00"); 
select*from VaishalaMenu;

CREATE TABLE DakshinMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO DakshinMenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "chicken manchurian", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "chicken platter","nonveg starters", "880.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken handi","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "chicken fried", "nonveg main course", "310.00"),
("21", "pepper chicken", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "chicken triple shezwan rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from DakshinMenu;

CREATE TABLE empiremenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO empiremenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "chicken manchurian", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "chicken platter","nonveg starters", "880.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken handi","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "chicken fried", "nonveg main course", "310.00"),
("21", "pepper chicken", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "chicken triple shezwan rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from empiremenu;

CREATE TABLE royal_castlemenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO royal_castlemenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", " starters"," 250.00"),
("2", "chicken 65", "starters"," 220.00"),
("3", "chicken lollipop", "starters"," 240.00"),
("4", "chicken crispy", "starters"," 280.00"),
("5", "chicken manchurian", "starters"," 345.00"),
("6", "chicken kabab", "starters"," 220.00"),
("7", "chicken platter","starters", "880.00"),
("8", " hongkong chicken","starters","280.00"),
("9", "chicken chilli", "starters", "210.00 "),
("10", "tandoori chicken", "starters", "260.00" ),
("11", "chicken cheese kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chicken leg piece", "starters", "380.00 "),
("14", "chicken malai kabab", "starters", "210.00"),
("15", "chicken handi","main course", "355.00"),
("16", "butter chicken", "main course","350.00"),
("17", "chicken masala", "main course", "370.00"),
("18", "kadhai chicken", "main course", "280.00"),
("19", "chicken korma", "main course", "290.00"),
("20", "chicken fried", "main course", "310.00"),
("21", "pepper chicken", "main course", "390.00"),
("22", "chicken keema ", "main course", "320.00"),
("23", "lemon chicken", "main course", "350.00"),
("24", "chicken kofta masala", "main course", "300.00"),
("25", "chicken angara", "main course", "230.00"),
("26", "chicken hyderabadi", "main course", "240.00"),
("27", "chicken kali mirch", "main course", "230.00"),
("28", "chicken maratha", "main coures", "220.00"),
("29", "chicken maharaja","main coures", "210.00"),
("30", "chicken bhuna", "main coures","210.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", " main coures", "210.00"),
("34", "chicken triple shezwan rice", "main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", "chicken tikka biryani", "main coures", "210.00"),
("37", "hyderabadi biryani", "main coures", "210.00"),
("38", "javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from royal_castlemenu;

CREATE TABLE golden_curryMenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);
INSERT INTO golden_curryMenu(DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "prawns", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "fish fry","nonveg starters", "380.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken hand ","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "fish curry", "nonveg main course", "310.00"),
("21", "fish masala", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "egg fried rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from golden_curryMenu;

CREATE TABLE supermemenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO supermemenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "prawns", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "fish fry","nonveg starters", "380.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken hand ","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "fish curry", "nonveg main course", "310.00"),
("21", "fish masala", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "egg fried rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from supermemenu;

CREATE TABLE classiomenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO classiomenu (DishID, DishName, Category, Price )
VALUES
("1", "paneer angara tikka", "veg starters"," 350.00"),
("2", "paneer pesto kebab", "veg starters"," 320.00"),
("3", "paneer chatpata", "veg starters"," 240.00"),
("4", "veg moti seekh", "veg starters"," 380.00"),
("5", "paneer chilly", "veg starters"," 245.00"),
("6", "tandoori mushroom", "veg starters"," 320.00"),
("7", "bharvan mushroom","veg starters", "380.00"),
("8", " Stuffed Mushrooms","veg starters","280.00"),
("9", "chicken leg pc", "nonveg starters", "390.00 "),
("10", "tandoori chicken", "nonveg starters", "360.00" ),
("11", "chicken seekh kebab", "nonveg starters", "320.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chichen tikka", "nonveg starters", "380.00 "),
("14", "chicken platter", "nonveg starters", "1100.00"),
("15", "paneer butter masala ", " veg main course", "255.00"),
("16", "palak paneer ", "veg main course","250.00"),
("17", "kadai paneer", "veg main course", "270.00"),
("18", " matar paneer ", "veg main course", "380.00"),
("19", "paneer tikka", "veg main course", "290.00"),
("20", "malai kofta", "veg main course", "310.00"),
("21", "rajma", "veg main course", "290.00"),
("22", "chicken thai curry", "nonveg main course", "420.00"),
("23", "chicken hot garlic", "nonveg main course", "450.00"),
("24", "chicken basket", "nonveg main course", "400.00"),
("25", "chicken gassi", "nonveg main course", "430.00"),
("26", "chicken mangalorian curry", "nonveg main course", "440.00"),
("27", "chicken handi", "nonveg main course", "330.00"),
("28", "chicken angara masala", "nonveg main coures", "420.00"),
("29", "chicken tikka masala","nonveg main coures", "410.00"),
("30", "chicken banjara masala", "nonveg main coures","310.00"),
("31", "rice", "veg main course", "210.00"),
("32", "jeera rice", "veg main coures", "210.00"),
("33", "chicken biryani", "nonveg main coures", "210.00"),
("34", "chicken fried rice", "nonveg main coures", "210.00"),
("35", "hyderabadi biryani", "nonveg main coures", "250.00"),
("36", "dal tadka", "main coures", "150.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "vanilla with hot chocolate sauce", "dessert", "150.00"),
("45", "fruit salad with ice cream", "dessert", "200.00"),
("46", "gulab jamun", "dessert", "160.00");
select*from classiomenu;
    
    CREATE TABLE moonlightmenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO moonlightmenu (DishID, DishName, Category, Price )
VALUES
("1", "veg lollypop", "starters"," 250.00"),
("2", "veg 65", "starters"," 220.00"),
("3", "soya chaap", "starters"," 240.00"),
("4", "paneer 65", "starters"," 280.00"),
("5", "mushroom chilly", "starters"," 245.00"),
("6", "spring roll", "starters"," 220.00"),
("7", "aloo tikka","starters", "180.00"),
("8", " Stuffed Mushrooms","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "260.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "cheese balls", "starters", "280.00 "),
("14", "tandoori broccoli", "starters", "290.00"),
("15", "paneer butter masala ", "main course", "255.00"),
("16", "palak paneer ", "main course","250.00"),
("17", "kadai paneer", "main course", "270.00"),
("18", " matar paneer ", "main course", "380.00"),
("19", "paneer tikka", "main course", "290.00"),
("20", "malai kofta", "main course", "310.00"),
("21", "rajma", "main course", "290.00"),
("22", "bhindi masala", "main course", "220.00"),
("23", "mushroom", "main course", "350.00"),
("24", "kaju matter", "main course", "400.00"),
("25", "paneer mushroom", "main course", "330.00"),
("26", "mushroom tikka", "main course", "440.00"),
("27", "veg handi", "main course", "330.00"),
("28", "veg maratha", "main coures", "320.00"),
("29", "veg kolhapuri","main coures", "310.00"),
("30", "mix veg", "main coures","310.00"),
("31", "rice", "main course", "310.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "veg pulao", "main coures", "110.00"),
("34", "paneer pulao", "main coures", "110.00"),
("35", "kaju pulao", "main coures", "110.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "dal makkhani", "main coures", "110.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "vanilla with hot chocolate sauce", "dessert", "150.00"),
("45", "fruit salad with ice cream", "dessert", "200.00"),
("46", "gulab jamun", "dessert", "160.00"); 
select*from moonlightmenu;

 CREATE TABLE rajwadamenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO rajwadamenu (DishID, DishName, Category, Price )
VALUES
("1", "chicken tikka", "nonveg starters"," 250.00"),
("2", "chicken 65", "nonveg starters"," 220.00"),
("3", "chicken lollipop", "nonveg starters"," 240.00"),
("4", "chicken crispy", "nonveg starters"," 280.00"),
("5", "chicken manchurian", "nonveg starters"," 345.00"),
("6", "chicken kabab", "nonveg starters"," 220.00"),
("7", "chicken platter","nonveg starters", "880.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "chicken handi","nonveg main course", "355.00"),
("16", "butter chicken", "nonveg main course","350.00"),
("17", "chicken masala", "nonveg main course", "370.00"),
("18", "kadhai chicken", "nonveg main course", "280.00"),
("19", "chicken korma", "nonveg main course", "290.00"),
("20", "chicken fried", "nonveg main course", "310.00"),
("21", "pepper chicken", "nonveg main course", "390.00"),
("22", "chicken keema ", "nonveg main course", "320.00"),
("23", "lemon chicken", "nonveg main course", "350.00"),
("24", "chicken kofta masala", "nonveg main course", "300.00"),
("25", "paneer masala", "main course", "130.00"),
("26", "butter paneer masala", "main course", "140.00"),
("27", "veg kofta", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "veg handi", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "chicken fried rice", "nonveg main coures", "210.00"),
("34", "chicken triple shezwan rice", "nonveg main coures", "210.00"),
("35", "biryani rice", "nonveg main coures", "210.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", " javar roti", "main coures", "30.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from rajwadamenu;

CREATE TABLE ashokamenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO ashokamenu (DishID, DishName, Category, Price )
VALUES
("1", "paneer spring roll", "starters"," 190" ),
    ("2", "paneer 65","starters", "180 "),
    ("3", " veg chilly","starters", "200" ),
    ("4", "paneer tikka", "starters", "190 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "paneer chilly", "starters", "190" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "paneer hot pan", "starters", "180 "),
    ("9", "mashroom chilly", "starters", "210" ),
    ("10", "sev bhaji  ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " tava masala chaap ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "veg mix", "main course", "210" ),
    ("16", "veg afgani", "main course", "190 "),
    ("17", "bhendi masala", "main course", "180" ),
    ("18", "veg tawa", "main course", "150 "),
    ("19", "kaju matter", "main course", "180" ),
    ("20", "mushroom kadai", "main course"," 180" ),
    ("21", "mushroom tikka", "main course", "190" ),
    ("22", "mushroom handi", "main course", "180" ),
    ("23", "veg maratha", "main coures", "170 "),
    ("24", "veg kolhapuri","main coures", "150" ),
    ("25", "veg kofta", "main coures", "190 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "matka kulfi", "dessert", "100" ),
    ("41", "dry fruit punch", "dessert", "60" );
    select*from ashokamenu;
    
    
CREATE TABLE dwarkamenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO dwarkamenu (DishID, DishName, Category, Price )
VALUES
 ("1", "spring roll", "staters"," 120" ),
    ("2", "aloo tikka","starters", "80 "),
    ("3", " Stuffed Mushrooms","starters", "200" ),
    ("4", "paneer tikka", "starters", "110 "),
    ("5", "manchurian", "starters", "200" ),
    ("6", "seekh kebab", "starters", "120" ),
    ("7", "masala papad", "starters", "80" ),
    ("8", "cheese balls", "starters", "180 "),
    ("9", "tandoori broccoli", "starters", "210" ),
    ("10", "paneer butter masala ", "main course", "110"),
    ("11", "palak paneer ", "main course","150" ),
    ("12", "kadai paneer", "main course", "170 "),
    ("13", " matar paneer ", "main course", "180 "),
    ("14", "paneer tikka", "main course", "190 "),
    ("15", "malai kofta", "main course", "210" ),
    ("16", "rajma", "main course", "120 "),
    ("17", "bhindi masala", "main course", "110" ),
    ("18", "mushroom", "main course", "250 "),
    ("19", "kaju matter", "main course", "150" ),
    ("20", "paneer mushroom", "main course"," 130" ),
    ("21", "mushroom tikka", "main course", "110" ),
    ("22", "veg handi", "main course", "130" ),
    ("23", "veg maratha", "main coures", "120 "),
    ("24", "veg kolhapuri","main coures", "110" ),
    ("25", "mix veg", "main coures", "110 "),
    ("26", "rice", "main course", "110" ),
    ("27", "jeera rice", "main coures", "110" ),
    ("28", "veg pulao", "main coures"," 110" ),
    ("29", "paneer pulao", "main coures", "110 "),
    ("30", "kaju pulao", "main coures", "110 "),
    ("31", " dal tadka", "main coures", "110" ),
    ("32", "dal fry", "main coures", "110" ),
    ("33", "dal makkhani", "main coures", "110" ),
    ("34", "roti", "main coures", "10" ),
    ("35", "butter roti", "main coures", "15" ),
    ("36", "nan", "main coures", "30" ),
    ("37", "butter nan", "main coures", "15" ),
    ("38", "ice cream", "dessert", "50 "),
    ("39", "cheesecake", "dessert", "50" ),
    ("40", "chocolate lava", "dessert", "100" ),
    ("41", "pudding", "dessert", "60" ),
    ("42", "chocolate mousse", "dessert", "90" );
    
    select*from dwarkamenu;
    
    CREATE TABLE neelammenu (
    DishID INT PRIMARY KEY,
    DishName VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
     FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
    
);

INSERT INTO neelammenu (DishID, DishName, Category, Price )
VALUES
("1", "mashroom tikka", "starters"," 150.00"),
("2", "veg 65", "starters"," 120.00"),
("3", "aloo tikka", "starters"," 140.00"),
("4", "paneer 65", "starters"," 280.00"),
("5", "mushroom chilly", "starters"," 145.00"),
("6", "paneer kabab", "starters"," 120.00"),
("7", "gobi 65","starters", "180.00"),
("8", " veg crispy","starters","280.00"),
("9", "paneer tikka", "starters", "210.00 "),
("10", "manchurian", "starters", "160.00" ),
("11", "seekh kebab", "starters", "220.00" ),
("12", "masala papad", "starters", "110.00" ),
("13", "chilli potato", "starters", "180.00 "),
("14", "mushroom 65", "starters", "190.00"),
("15", "paneer butter masala ", "main course", "255.00"),
("16", "palak paneer ", "main course","150.00"),
("17", "kadai paneer", "main course", "170.00"),
("18", " matar paneer ", "main course", "180.00"),
("19", "paneer tikka", "main course", "190.00"),
("20", "malai kofta", "main course", "110.00"),
("21", "veg afgani", "main course", "190.00"),
("22", "veg angara ", "main course", "120.00"),
("23", "mushroom", "main course", "150.00"),
("24", "kaju matter", "main course", "100.00"),
("25", "malvani handi", "main course", "130.00"),
("26", "mushroom tikka", "main course", "140.00"),
("27", "veg kurma", "main course", "130.00"),
("28", "veg maratha", "main coures", "120.00"),
("29", "veg kolhapuri","main coures", "110.00"),
("30", "mix veg", "main coures","110.00"),
("31", "rice", "main course", "110.00"),
("32", "jeera rice", "main coures", "110.00"),
("33", "curd rice", "main coures", "110.00"),
("34", "paneer pulao", "main coures", "110.00"),
("35", "dalkhichadi", "main coures", "110.00"),
("36", " dal tadka", "main coures", "110.00"),
("37", "dal fry", "main coures", "110.00"),
("38", "dal makkhani", "main coures", "110.00"),
("39", "roti", "main coures", "10.00"),
("40", "butter roti", "main coures", "15.00"),
("41", "nan", "main coures", "30.00"),
("42", "butter nan", "main coures", "15.00"),
("43", "ice cream", "dessert", "150.00"),
("44", "cheesecake", "dessert", "150.00"),
("45", "chocolate lava", "dessert", "200.00"),
("46", "pudding", "dessert", "160.00"),
("47", "chocolate mousse", "dessert", "190.00"),
("48", "mastani", "dessert", "300.00");
select*from neelammenu;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
INSERT INTO Customers(CustomerID, Firstname,LastName, Email, Phone)
 VALUES 
 (1, 'sakshi',' raut', 'sakshi@email.com', '123-456-7890'),
 (2, 'kajal' ,'puri', 'kajal@email.com', '987-654-3210'),
 (3, 'Arpit', 'Sharma', 'Arpit@email.com', '907-543-5050'),
 (4, 'Pallavi', 'Shah', 'pallavi@email.com', '531-876-2020'); 
select*from customers;
     
     CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    RestaurantID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20) DEFAULT 'Pending ,Confirmed',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(RestaurantID) REFERENCES Restaurants(RestaurantID)
);
INSERT INTO Orders(OrderID, CustomerID, RestaurantID, Orderdate, Totalamount,status)
 VALUES
 (1, 1, '1', '2024-02-29 12:30:00', 200,'pendind'),
 (2, 2, '2', '2024-02-29 13:45:00', 300,'pendind' ),
 (3, 3, '3', '2024-02-29 14:15:00', 340, 'Confirmed'),
(4 , 4, '4', '2024-02-29 14:45:00', 250, 'Pending');
 select*from orders;
 
 CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderName VARCHAR(100),
    Quantity INT,
    OrderDate DATETIME,
    Price DECIMAL(10, 2),
     FOREIGN KEY(CustomerName)REFERENCES Customers(CustomerName),
    FOREIGN KEY(OrderName)REFERENCES Orders(OrderName)
    );
    
    INSERT INTO OrderDetails (OrderDetailID, CustomerName, OrderName , Quantity, OrderDate , Price )
    VALUES 
     ("1","sakshi","pizza,paneer tikka,cheeseball","2","24-03-01 12:30:10","450"),
     ("2","kajal","spring roll,butter roti","2","24-03-01 12:45:00","550"),
     ("3","arpit","pizza,mushroom","2","24-03-01 1:30:00","500"),
     ("4","pallavi","pizza,paneer","2","24-03-01 1:50:00","650");
        select*from orderdetails;
        
    CREATE TABLE tbl_Bookings (
    BookingID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    RestaurantName VARCHAR(100),
    TableID INT, 
    BookingDate DATETIME,
    NumberOfPeople INT,
    Status VARCHAR(20),
    FOREIGN KEY (RestaurantName) REFERENCES Restaurant(RestaurantName),
    FOREIGN KEY (TableID) REFERENCES Tables(TableID)
);
INSERT INTO tbl_Bookings(bookingID, customerName, restaurantName, tableID, bookingdate, numberofpeople, status)
 VALUES
 ('1', 'sakshi raut', 'atithi', 1, '2024-02-29 18:00:00', 3, 'Confirmed'),
 ('2', 'kajal puri', 'shabari', 2, '2024-03-01 19:30:00', 5, 'Pending'),
 ('3', 'arpit sharma', 'atithi', 2, '2024-03-02 20:00:00', 6, 'Confirmed'),
 ('4', 'pallavi shah', 'atithi', 2, '2024-03-02 20:30:00', 4, 'Confirmed');
select*from tbl_bookings;

CREATE TABLE Delivery_boy(
    Delivery_boyID INT PRIMARY KEY,
    OrderID INT auto_increment,
    CustomerName VARCHAR(100),
    Contact VARCHAR(100),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
    );
    INSERT INTO  Delivery_boy(Delivery_boyID, OrderID, CustomerName,Contact)
    VALUES
    (1,'1','sakshi raut','975-327-6437'),
    (2,'2','kajal puri','234-987-6070'),
    (3,'3','arpit sharma','021-654-0403'),
    (4,'4','pallavi shah','012-307-6007');
    select*from Delivery_boy;
CREATE TABLE Payments (
    OrderID INT NOT NULL AUTO_INCREMENT,
    Payment VARCHAR(100) NOT NULL,
    PaymentDate DATETIME,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Payments( OrderID, Payment, PaymentDate )
 VALUES 
(1, 'Paytm', '2024-03-02 10:00:00'),
 (2,'GPAY', '2024-03-03 11:30:00'),
 (3,'ATM Card', '2024-03-03 11:30:00'),
 (4,'Cash on Delivery', '2024-03-03 11:30:00');
 select*from Payments;
 
CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
	CustomerName VARCHAR(100),
    RestaurantName VARCHAR (100),
    Rating DECIMAL(2, 1),
    Review TEXT,
   FOREIGN KEY (CustomerName) REFERENCES Customers(CustomerName),
    FOREIGN KEY (RestaurantName) REFERENCES Restaurants(RestaurantName)
);
INSERT INTO Ratings (RatingID, CustomerName, RestaurantName, Rating, Review)
 VALUES
 (1, 'sakshi raut', 'atithi', 4.5, 'Great experience! Will come again.'),
 (2, 'kajal puri','shabari', 3.0, 'Average service, could be better.');
select*from ratings;
 
 
 