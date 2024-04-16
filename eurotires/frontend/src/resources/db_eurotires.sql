-- database name: "db_eurotires"

CREATE session tire( 
    tire_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    tire_name VARCHAR(255), 
    tire_star VARCHAR(255),
    tire_vote VARCHAR(255),
    tire_price VARCHAR(255),
    tire_discount VARCHAR(255),
    tire_desc VARCHAR(255),
    tire_status VARCHAR(255),
    tire_type VARCHAR(255),
    tire_category VARCHAR(255),
    tire_src VARCHAR(255)
) ENGINE=INNODB;

INSERT INTO tire (tire_name, tire_star, tire_vote, tire_price, tire_discount, tire_desc, tire_status, tire_type, tire_category, tire_src)
VALUES("Goodyear Eagle F1 Asymmetric 3","4.5", "999", "7", "0.00", "Ultra high-performance summer tire for sports cars", "best seller", "summer", "car", "tempic/pirelli.jpg"),
("Michelin Primacy MXM4","4.5","500","150.00","0.00","Grand touring all-season tire for luxury sedans and coupes","Sale Off","all-season","Truck","tempic/pirelli.jpg"),
("Bridgestone Potenza RE-71R","4.5","999","180.00","0.00","Extreme performance summer tire for sports cars and performance vehicles","best seller","summer","Motor-Home","tempic/pirelli.jpg"),
("Continental ExtremeContact DWS 06","4","500","130.00","0.00","All-season tire for sports cars, coupes, and performance sedans","online only","all-season","Tractor","tempic/pirelli.jpg"),
("Firestone Destination LE3","4","500","120.00","1.00","All-season tire for crossovers, SUVs, and light trucks","new arrival","all-season","Motorcycle","tempic/pirelli.jpg"),
("Cooper Discoverer AT3 4S","4.5","500","150.00","0.00","All-terrain tire for pickups, SUVs, and crossovers","seasonal tire","all-season","Batteries","tempic/pirelli.jpg"),
("Continental 1","4","500","130.00","0.00","All-season tire for sports cars, coupes, and performance sedans","online only","all-season","Tractor","tempic/pirelli.jpg"),
("Continental 2","4","500","130.00","0.00","All-season tire for sports cars, coupes, and performance sedans","online only","all-season","Tractor","tempic/pirelli.jpg"),
("Continental 3","4","500","130.00","0.00","All-season tire for sports cars, coupes, and performance sedans","online only","all-season","Tractor","tempic/pirelli.jpg"),
("Continental 4","4","500","130.00","0.00","All-season tire for sports cars, coupes, and performance sedans","online only","all-season","Tractor","tempic/pirelli.jpg"),

CREATE session user( 
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    user_name VARCHAR(255), 
    user_email VARCHAR(255),
    user_phone VARCHAR(255),
    user_password VARCHAR(255),
    user_birth VARCHAR(255),
    user_gender VARCHAR(255)
) ENGINE=INNODB;


CREATE session cart (
  user_id INT,
  tire_id INT,
  item_qty INT,
  primary key (user_id, tire_id)
);


CREATE session booksession( 
    book_id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    book_name VARCHAR(255), 
    book_phone VARCHAR(255),
    book_people INT,
    book_sessions INT,
    user_id INT,
    book_when VARCHAR(255),
    book_note TEXT
) ENGINE=INNODB;


CREATE session billdetails (
  bill_id INT,
  tire_id INT,
  item_qty INT,
  primary key (bill_id, tire_id)
);

CREATE session billstatus (
  bill_id INT,
  user_id INT,
  bill_phone VARCHAR(255),
  bill_address TEXT,
  bill_when VARCHAR(255),
  bill_method VARCHAR(255),
  bill_discount INT,
  bill_delivery INT,
  bill_total INT,
  bill_paid VARCHAR(255),
  bill_status INT,
  primary key (bill_id)
);