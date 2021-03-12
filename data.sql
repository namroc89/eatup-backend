CREATE TABLE users
(
    id serial PRIMARY KEY,
    username VARCHAR(25) NOT NULL UNIQUE,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    password TEXT NOT NULL

);
CREATE TABLE menus
(
    id serial PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users
);
CREATE TABLE menu_items
(
    id serial PRIMARY KEY,
    username VARCHAR(25) NOT NULL REFERENCES users(username),
    restaurant_id INT NOT NULL,
    menu_id INT NOT NULL REFERENCES menus

);