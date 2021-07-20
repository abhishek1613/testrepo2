CREATE DATABASE production;
USE production;
CREATE TABLE products0(
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL
	
);

INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Trek 820 - 2016',9,6,2016,379.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Surly Wednesday Frameset - 2016',8,6,2016,999.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Heller Shagamaw Frame - 2016',3,6,2016,1320.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Trek Slash 8 27.5 - 2016',9,6,2016,3999.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Trek Conduit+ - 2016',9,5,2016,2999.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Surly Straggler - 2016',8,4,2016,1549);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Surly Straggler 650b - 2016',8,4,2016,1680.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 21D - 2016',1,3,2016,549.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Cruiser 1 (24-Inch) - 2016',1,3,2016,269.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,3,2016,269.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Moto 1 - 2016',1,3,2016,529.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 7D EQ - 2016',1,3,2016,599.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Pure Cycles Vine 8-Speed - 2016',4,3,2016,429);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Pure Cycles Western 3-Speed - Women''s - 2015/2016',4,3,2016,449);
INSERT INTO production.products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Pure Cycles William 3-Speed - 2016',4,3,2016,449);
INSERT INTO products0( product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 7D EQ - Women''s - 2016',1,3,2016,599.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Cruiser 1 (24-Inch) - 2016',1,1,2016,269.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,1,2016,269.99);
INSERT INTO products0( product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Girl''s Hawaii 1 (20-inch) - 2015/2016',1,1,2016,299.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 21D - 2016',1,2,2016,549.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 7D - 2015/2016',1,2,2016,499.99);
INSERT INTO products0(product_name, brand_id, category_id, model_year, list_price) VALUES('Electra Townie Original 7D EQ - 2016',1,2,2016,599.99);

select * from products0;

CREATE TABLE users(
   first_name VARCHAR(100)
   );
   
   show tables;
   drop TABLE users;
SELECT product_name, brand_id, category_id FROM products0;
SELECT * from products0 WHERE category_id=2;
DELETE FROM products0 WHERE brand_id=9;
SELECT * FROM products0 WHERE product_name LIKE 'Electra%';
SELECT * from products0;
