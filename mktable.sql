CREATE TABLE product(
	id VARCHAR(6) PRIMARY KEY,
	description VARCHAR(100),
	price DECIMAL(10,2)
);
INSERT INTO product VALUES('112233','Laptop Computer Yoga 910',1300);
INSERT INTO product VALUES('112234','Large Screen Monitor',100

CREATE TABLE cust_order(
id INT PRIMARY KEY,
status VARCHAR(10)
);

INSERT INTO cust_order VALUES(101,'incomplete');
INSERT INTO cust_order VALUES(102,'waiting');
INSERT INTO cust_order VALUES(103,'waiting');
INSERT INTO cust_order VALUES(104,'processing');
INSERT INTO cust_order VALUES(105,'ready');
INSERT INTO cust_order VALUES(106,'complete');

CREATE TABLE order_line(
  cust_order INT,
  product INT ,
  qty INT,
  PRIMARY KEY(cust_order,product),
  FOREIGN KEY (cust_order)REFERENCES cust_order(id),
  FOREIGN KEY(product) REFERENCES product(id)
);



INSERT into order_line  VALUES(105,112233,1);


INSERT into order_line  VALUES(105,112234,1);