 create table login1(
     id int(20) not null,
    full_name varchar(50) not null,
    username varchar(100) not null,
    password varchar(255) not null
    );
    insert into login1(id, full_name ,username, password)values("1","sakshi","sakshi1234","pass@123");
    select*from login1;