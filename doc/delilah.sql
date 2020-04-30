CREATE DATABASE delilah;
USE delilah;
CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
userName VARCHAR(255) NOT NULL,
name VARCHAR(255) NOT NULL,
lastName VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
phone VARCHAR(15) NOT NULL,
address VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
token VARCHAR(255) NOT NULL,
is_admin BOOLEAN NOT NULL
);

CREATE TABLE products (
id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
name VARCHAR(255) NOT NULL,
description VARCHAR(255) NOT NULL,
ingredients VARCHAR(255) NOT NULL,
price FLOAT NOT NULL,
img VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
user_id INT NOT NULL,
state VARCHAR(60) NOT NULL,
payment Boolean NOT NULL,
total FLOAT NOT NULL,
time datetime NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE orderDetails(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO products (name, description, ingredients, price, img) VALUES ("Hamburguesa Clásica", "HamClas", "Medallón de carne y queso cheddar", 350, "https://image.freepik.com/foto-gratis/sabrosa-hamburguesa-clasica-papas_23-2148290583.jpg"), 
("Hamburguesa Completa", "HamCompl", "Medallón de carne, jamón, queso cheddar, tomate y lechuga", 385, "https://i.ytimg.com/vi/heZhr859O6I/maxresdefault.jpg"), 
("Hamburguesa Delilah", "HamDel", "Medallón de carne, panceta, queso cheddar, huevo y cebolla caramelizada", 400.50, "https://www.doravidela.com.ar/imagenes/47_606x356.jpg"), 
("Sandwich Veggie", "SandVeg", "Pan integral, tomate, lechuga, zanahoria, cebolla, pepino y palta", 310, "https://thekitchengirl.com/wp-content/uploads/Vegan-Veggie-Sandwich-Even-Meat-Eaters-Love-Recipe-by-The-Kitchen-Girl_12.jpg"), 
("Sandwich Focaccia", "SandFoc", "Pan de queso, jamón, queso, lechuga y tomate", 440, "https://images-gmi-pmc.edge-generalmills.com/ee2d9130-1974-494c-9957-c811ed729577.jpg"), 
("Ensalada Veggie", "EnsVeg", "Rúcula, zanahoria, cebolla y mix de semillas", 340, "https://lavidaentenis.com/wp-content/uploads/2016/09/f8e229fc-2a14-437c-89ff-e5216680bf38.jpeg"), 
("Bagel de salmón", "BagSalm", "Pan brioche, salmón ahumado, tomates cherry y queso crema", 425, "https://okdiario.com/img/2018/12/03/bagel-de-salmon-655x368.jpg") ;

INSERT INTO users (userName, name, lastName, email, phone, address, password, token, is_admin) VALUES ("admin", "Juan", "García", "admin@delilah.com", 156123456, "Av. Siempreviva 123", "delilah", " ", true); 