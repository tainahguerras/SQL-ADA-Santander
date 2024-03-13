CREATE TABLE cars.category (
	category_id CHAR(3),
	employee_id INTEGER,
	category_name VARCHAR(50),
	rating VARCHAR(5),
	quantity_sold INTEGER,
	being_manufactured BOOLEAN,
	total_sold_value INTEGER
);

CREATE TABLE cars.customer (
	customer_id INTEGER,
	employee_id INTEGER,
	firstname VARCHAR(30),
	lastname VARCHAR(30),
	dof DATE,
	phone CHAR(10),
	email VARCHAR(50),
	city VARCHAR(255),
	country VARCHAR(255)
);

CREATE TABLE cars.employee (
	employee_id INTEGER,
	store_id INTEGER,
	firstname VARCHAR(30),
	lastname VARCHAR(30),
	dof DATE,
	phone CHAR(10),
	email VARCHAR(50),
	status VARCHAR(6),
	salary INTEGER,
	street VARCHAR(255),
	city VARCHAR(255),
	country VARCHAR(255)
);

CREATE TABLE cars.order (
	order_id VARCHAR(6),
	customer_id INTEGER,
	product_id INTEGER,
	store_id INTEGER,
	employee_id INTEGER,
	order_date DATE,
	shipped_date DATE,
	required_date DATE,
	order_status VARCHAR(9),
	quantity INTEGER
);

CREATE TABLE cars.product (
	product_id INTEGER,
	provider_id CHAR(6),
	category_id CHAR(3),
	product_name VARCHAR(30),
	model VARCHAR(30),
	year CHAR(4),
	color VARCHAR(30),
	km INTEGER,
	price INTEGER
);

CREATE TABLE cars.provider (
	provider_id CHAR(6),
	employee_id INTEGER,
	provider_name VARCHAR(50),
	debt INTEGER,
	phone CHAR(10),
	email VARCHAR(255),
	city VARCHAR(255),
	country VARCHAR(255)
);

CREATE TABLE cars.rise_archive (
	rise_id CHAR(4),
	amount_by_percent INTEGER,
	rise_date DATE,
	rise_state CHAR(9)
);

CREATE TABLE cars.store (
	store_id INTEGER,
	employee_id INTEGER,
	store_name VARCHAR(255),
	phone CHAR(10),
	street VARCHAR(255),
	city VARCHAR(255),
	country VARCHAR(255),
	email VARCHAR(255),
	post_code CHAR(4)
);