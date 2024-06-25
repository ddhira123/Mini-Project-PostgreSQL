--INSERT SEA COUNTRY
INSERT INTO country (name) VALUES 
('Brunei'),
('Cambodia'),
('Indonesia'),
('Laos'),
('Malaysia'),
('Myanmar'),
('Philippines'),
('Singapore'),
('Thailand'),
('Vietnam'),
('Timor-Leste');

--INSERT CITY FROM SEA COUNTRY
-- Insert data into city table for Brunei
INSERT INTO city (name, country_id) VALUES
('Bandar Seri Begawan', (SELECT country_id FROM country WHERE name = 'Brunei'));

-- Insert data into city table for Cambodia
INSERT INTO city (name, country_id) VALUES
('Phnom Penh', (SELECT country_id FROM country WHERE name = 'Cambodia')),
('Siem Reap', (SELECT country_id FROM country WHERE name = 'Cambodia'));

-- Insert data into city table for Indonesia
INSERT INTO city (name, country_id) VALUES
('Jakarta', (SELECT country_id FROM country WHERE name = 'Indonesia')),
('Surabaya', (SELECT country_id FROM country WHERE name = 'Indonesia')),
('Bandung', (SELECT country_id FROM country WHERE name = 'Indonesia')),
('Medan', (SELECT country_id FROM country WHERE name = 'Indonesia'));

-- Insert data into city table for Laos
INSERT INTO city (name, country_id) VALUES
('Vientiane', (SELECT country_id FROM country WHERE name = 'Laos'));

-- Insert data into city table for Malaysia
INSERT INTO city (name, country_id) VALUES
('Kuala Lumpur', (SELECT country_id FROM country WHERE name = 'Malaysia')),
('George Town', (SELECT country_id FROM country WHERE name = 'Malaysia')),
('Johor Bahru', (SELECT country_id FROM country WHERE name = 'Malaysia'));

-- Insert data into city table for Myanmar
INSERT INTO city (name, country_id) VALUES
('Yangon', (SELECT country_id FROM country WHERE name = 'Myanmar')),
('Mandalay', (SELECT country_id FROM country WHERE name = 'Myanmar'));

-- Insert data into city table for Philippines
INSERT INTO city (name, country_id) VALUES
('Manila', (SELECT country_id FROM country WHERE name = 'Philippines')),
('Cebu City', (SELECT country_id FROM country WHERE name = 'Philippines')),
('Davao City', (SELECT country_id FROM country WHERE name = 'Philippines'));

-- Insert data into city table for Singapore
INSERT INTO city (name, country_id) VALUES
('Singapore', (SELECT country_id FROM country WHERE name = 'Singapore'));

-- Insert data into city table for Thailand
INSERT INTO city (name, country_id) VALUES
('Bangkok', (SELECT country_id FROM country WHERE name = 'Thailand')),
('Chiang Mai', (SELECT country_id FROM country WHERE name = 'Thailand'));

-- Insert data into city table for Vietnam
INSERT INTO city (name, country_id) VALUES
('Hanoi', (SELECT country_id FROM country WHERE name = 'Vietnam')),
('Ho Chi Minh City', (SELECT country_id FROM country WHERE name = 'Vietnam'));

-- Insert data into city table for Timor-Leste
INSERT INTO city (name, country_id) VALUES
('Dili', (SELECT country_id FROM country WHERE name = 'Timor-Leste'));


--INSERT RANDOM ADDRESS
-- Insert data into address table for Brunei
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Jalan Sultan', 'Kampong Ayer', (SELECT city_id FROM city WHERE name = 'Bandar Seri Begawan'), 'BS8670'),
('456 Jalan Kuala', 'Kampong B', (SELECT city_id FROM city WHERE name = 'Kuala Belait'), 'KB1234'),
('789 Jalan Seria', 'Kampong C', (SELECT city_id FROM city WHERE name = 'Seria'), 'SR5678');

-- Insert data into address table for Cambodia
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Street 1', 'District 1', (SELECT city_id FROM city WHERE name = 'Phnom Penh'), 'PP1234'),
('456 Street 2', 'District 2', (SELECT city_id FROM city WHERE name = 'Siem Reap'), 'SR2345'),
('789 Street 3', 'District 3', (SELECT city_id FROM city WHERE name = 'Battambang'), 'BT3456');

-- Insert data into address table for Indonesia
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Jalan Sudirman', 'Kelurahan A', (SELECT city_id FROM city WHERE name = 'Jakarta'), 'JK1234'),
('456 Jalan Darmo', 'Kelurahan B', (SELECT city_id FROM city WHERE name = 'Surabaya'), 'SB2345'),
('789 Jalan Asia Afrika', 'Kelurahan C', (SELECT city_id FROM city WHERE name = 'Bandung'), 'BD3456'),
('101 Jalan Gatot Subroto', 'Kelurahan D', (SELECT city_id FROM city WHERE name = 'Medan'), 'MD4567'),
('202 Jalan Malioboro', 'Kelurahan E', (SELECT city_id FROM city WHERE name = 'Yogyakarta'), 'YG5678');

-- Insert data into address table for Laos
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Rue Samsenthai', 'Village A', (SELECT city_id FROM city WHERE name = 'Vientiane'), 'VT1234'),
('456 Rue Setthathirath', 'Village B', (SELECT city_id FROM city WHERE name = 'Vientiane'), 'VT2345'),
('789 Rue Pangkham', 'Village C', (SELECT city_id FROM city WHERE name = 'Vientiane'), 'VT3456');

-- Insert data into address table for Malaysia
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Jalan Tun Razak', 'Area A', (SELECT city_id FROM city WHERE name = 'Kuala Lumpur'), 'KL1234'),
('456 Jalan Penang', 'Area B', (SELECT city_id FROM city WHERE name = 'George Town'), 'GT2345'),
('789 Jalan Tebrau', 'Area C', (SELECT city_id FROM city WHERE name = 'Johor Bahru'), 'JB3456');

-- Insert data into address table for Myanmar
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Pyay Road', 'Quarter A', (SELECT city_id FROM city WHERE name = 'Yangon'), 'YG1234'),
('456 Mandalay-Lashio Road', 'Quarter B', (SELECT city_id FROM city WHERE name = 'Mandalay'), 'MD2345'),
('789 78th Street', 'Quarter C', (SELECT city_id FROM city WHERE name = 'Mandalay'), 'MD3456');

-- Insert data into address table for Philippines
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Roxas Blvd', 'Barangay A', (SELECT city_id FROM city WHERE name = 'Manila'), 'ML1234'),
('456 Osmena Blvd', 'Barangay B', (SELECT city_id FROM city WHERE name = 'Cebu City'), 'CC2345'),
('789 Davao Road', 'Barangay C', (SELECT city_id FROM city WHERE name = 'Davao City'), 'DC3456');

-- Insert data into address table for Singapore
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Orchard Road', 'Area A', (SELECT city_id FROM city WHERE name = 'Singapore'), 'SG1234'),
('456 Marina Bay', 'Area B', (SELECT city_id FROM city WHERE name = 'Singapore'), 'SG2345'),
('789 Sentosa', 'Area C', (SELECT city_id FROM city WHERE name = 'Singapore'), 'SG3456');

-- Insert data into address table for Thailand
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Sukhumvit Road', 'District A', (SELECT city_id FROM city WHERE name = 'Bangkok'), 'BK1234'),
('456 Nimmanhaemin Road', 'District B', (SELECT city_id FROM city WHERE name = 'Chiang Mai'), 'CM2345'),
('789 Silom Road', 'District C', (SELECT city_id FROM city WHERE name = 'Bangkok'), 'BK3456');

-- Insert data into address table for Vietnam
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Nguyen Hue', 'Ward A', (SELECT city_id FROM city WHERE name = 'Ho Chi Minh City'), 'HCM1234'),
('456 Le Loi', 'Ward B', (SELECT city_id FROM city WHERE name = 'Ho Chi Minh City'), 'HCM2345'),
('789 Tran Hung Dao', 'Ward C', (SELECT city_id FROM city WHERE name = 'Hanoi'), 'HN3456');

-- Insert data into address table for Timor-Leste
INSERT INTO address (address1, address2, city_id, postal_code) VALUES
('123 Avenida Bispo Medeiros', 'Area A', (SELECT city_id FROM city WHERE name = 'Dili'), 'DL1234'),
('456 Rua Dom Aleixo Corte-Real', 'Area B', (SELECT city_id FROM city WHERE name = 'Dili'), 'DL2345'),
('789 Rua Nicolau Lobato', 'Area C', (SELECT city_id FROM city WHERE name = 'Dili'), 'DL3456');


--INSERT RANDOM CUSTOMERS
INSERT INTO customers (first_name, last_name, address_id) VALUES
('John', 'Doe', (SELECT address_id FROM address WHERE address1 = '123 Jalan Sultan' LIMIT 1)),
('Jane', 'Smith', (SELECT address_id FROM address WHERE address1 = '456 Jalan Kuala' LIMIT 1)),
('Michael', 'Johnson', (SELECT address_id FROM address WHERE address1 = '789 Jalan Seria' LIMIT 1)),
('Emily', 'Davis', (SELECT address_id FROM address WHERE address1 = '123 Street 1' LIMIT 1)),
('Daniel', 'Brown', (SELECT address_id FROM address WHERE address1 = '456 Street 2' LIMIT 1)),
('Emma', 'Wilson', (SELECT address_id FROM address WHERE address1 = '789 Street 3' LIMIT 1)),
('Matthew', 'Taylor', (SELECT address_id FROM address WHERE address1 = '123 Jalan Sudirman' LIMIT 1)),
('Olivia', 'Moore', (SELECT address_id FROM address WHERE address1 = '456 Jalan Darmo' LIMIT 1)),
('Joshua', 'Anderson', (SELECT address_id FROM address WHERE address1 = '789 Jalan Asia Afrika' LIMIT 1)),
('Sophia', 'Thomas', (SELECT address_id FROM address WHERE address1 = '101 Jalan Gatot Subroto' LIMIT 1)),
('Andrew', 'Jackson', (SELECT address_id FROM address WHERE address1 = '202 Jalan Malioboro' LIMIT 1)),
('Isabella', 'White', (SELECT address_id FROM address WHERE address1 = '123 Rue Samsenthai' LIMIT 1)),
('Ryan', 'Harris', (SELECT address_id FROM address WHERE address1 = '456 Rue Setthathirath' LIMIT 1)),
('Mia', 'Martin', (SELECT address_id FROM address WHERE address1 = '789 Rue Pangkham' LIMIT 1)),
('David', 'Thompson', (SELECT address_id FROM address WHERE address1 = '123 Jalan Tun Razak' LIMIT 1)),
('Ella', 'Garcia', (SELECT address_id FROM address WHERE address1 = '456 Jalan Penang' LIMIT 1)),
('James', 'Martinez', (SELECT address_id FROM address WHERE address1 = '789 Jalan Tebrau' LIMIT 1)),
('Lily', 'Robinson', (SELECT address_id FROM address WHERE address1 = '123 Pyay Road' LIMIT 1)),
('Joseph', 'Clark', (SELECT address_id FROM address WHERE address1 = '456 Mandalay-Lashio Road' LIMIT 1)),
('Ava', 'Rodriguez', (SELECT address_id FROM address WHERE address1 = '789 78th Street' LIMIT 1)),
('Christopher', 'Lewis', (SELECT address_id FROM address WHERE address1 = '123 Roxas Blvd' LIMIT 1)),
('Chloe', 'Lee', (SELECT address_id FROM address WHERE address1 = '456 Osmena Blvd' LIMIT 1)),
('Anthony', 'Walker', (SELECT address_id FROM address WHERE address1 = '789 Davao Road' LIMIT 1)),
('Charlotte', 'Hall', (SELECT address_id FROM address WHERE address1 = '123 Orchard Road' LIMIT 1)),
('Alexander', 'Allen', (SELECT address_id FROM address WHERE address1 = '456 Marina Bay' LIMIT 1)),
('Amelia', 'Young', (SELECT address_id FROM address WHERE address1 = '789 Sentosa' LIMIT 1)),
('Ethan', 'Hernandez', (SELECT address_id FROM address WHERE address1 = '123 Sukhumvit Road' LIMIT 1)),
('Harper', 'King', (SELECT address_id FROM address WHERE address1 = '456 Nimmanhaemin Road' LIMIT 1)),
('William', 'Wright', (SELECT address_id FROM address WHERE address1 = '789 Silom Road' LIMIT 1)),
('Abigail', 'Lopez', (SELECT address_id FROM address WHERE address1 = '123 Nguyen Hue' LIMIT 1));


--INSERT 10 CATEGORIES
INSERT INTO categories (name) VALUES
('Fashion'),
('Electronics'),
('Home and Living'),
('Beauty and Health'),
('Toys and Games'),
('Books and Stationery'),
('Sports and Outdoor'),
('Food and Beverage'),
('Automotive'),
('Pet Supplies');

--INSERT PRODUCTS BASE ON CATEGORIES
-- Insert products related to Fashion category
INSERT INTO products (name, description, price, category_id) VALUES
('Men T-shirt', 'Comfortable cotton t-shirt for men', 25.99, (SELECT category_id FROM categories WHERE name = 'Fashion')),
('Women Dress', 'Elegant dress for women', 59.99, (SELECT category_id FROM categories WHERE name = 'Fashion')),
('Sneakers', 'Stylish sneakers for everyday wear', 49.99, (SELECT category_id FROM categories WHERE name = 'Fashion')),
('Handbag', 'Fashionable handbag for any occasion', 79.99, (SELECT category_id FROM categories WHERE name = 'Fashion'));

-- Insert products related to Electronics category
INSERT INTO products (name, description, price, category_id) VALUES
('Smartphone', 'Latest smartphone with advanced features', 699.99, (SELECT category_id FROM categories WHERE name = 'Electronics')),
('Laptop', 'Powerful laptop for work and entertainment', 1099.99, (SELECT category_id FROM categories WHERE name = 'Electronics')),
('Wireless Earbuds', 'High-quality wireless earbuds for music lovers', 129.99, (SELECT category_id FROM categories WHERE name = 'Electronics')),
('Smartwatch', 'Smartwatch with fitness tracking and notifications', 199.99, (SELECT category_id FROM categories WHERE name = 'Electronics'));

-- Insert products related to Home and Living category
INSERT INTO products (name, description, price, category_id) VALUES
('Throw Pillow', 'Soft and decorative throw pillow for your couch', 19.99, (SELECT category_id FROM categories WHERE name = 'Home and Living')),
('Cookware Set', 'Complete set of cookware for your kitchen', 149.99, (SELECT category_id FROM categories WHERE name = 'Home and Living')),
('Bedding Set', 'Luxurious bedding set for a comfortable sleep', 99.99, (SELECT category_id FROM categories WHERE name = 'Home and Living')),
('Wall Art', 'Beautiful wall art to enhance your home decor', 39.99, (SELECT category_id FROM categories WHERE name = 'Home and Living'));

-- Insert products related to Beauty and Health category
INSERT INTO products (name, description, price, category_id) VALUES
('Facial Cleanser', 'Gentle facial cleanser for daily use', 14.99, (SELECT category_id FROM categories WHERE name = 'Beauty and Health')),
('Hair Dryer', 'Professional hair dryer for quick styling', 49.99, (SELECT category_id FROM categories WHERE name = 'Beauty and Health')),
('Sunscreen', 'Broad-spectrum sunscreen for sun protection', 9.99, (SELECT category_id FROM categories WHERE name = 'Beauty and Health')),
('Makeup Set', 'Complete makeup set for a glamorous look', 69.99, (SELECT category_id FROM categories WHERE name = 'Beauty and Health'));

-- Insert products related to Toys and Games category
INSERT INTO products (name, description, price, category_id) VALUES
('Board Game', 'Classic board game for family fun', 29.99, (SELECT category_id FROM categories WHERE name = 'Toys and Games')),
('Action Figure', 'Collectible action figure of your favorite character', 19.99, (SELECT category_id FROM categories WHERE name = 'Toys and Games')),
('Puzzle', 'Challenging puzzle for hours of entertainment', 9.99, (SELECT category_id FROM categories WHERE name = 'Toys and Games')),
('Dollhouse', 'Beautiful dollhouse for imaginative play', 79.99, (SELECT category_id FROM categories WHERE name = 'Toys and Games'));

-- Insert products related to Books and Stationery category
INSERT INTO products (name, description, price, category_id) VALUES
('Novel', 'Bestselling novel for avid readers', 15.99, (SELECT category_id FROM categories WHERE name = 'Books and Stationery')),
('Notebook', 'High-quality notebook for note-taking', 7.99, (SELECT category_id FROM categories WHERE name = 'Books and Stationery')),
('Pen Set', 'Set of stylish pens for writing and drawing', 12.99, (SELECT category_id FROM categories WHERE name = 'Books and Stationery')),
('Coloring Book', 'Fun coloring book for kids and adults', 5.99, (SELECT category_id FROM categories WHERE name = 'Books and Stationery'));

-- Insert products related to Sports and Outdoor category
INSERT INTO products (name, description, price, category_id) VALUES
('Yoga Mat', 'Non-slip yoga mat for yoga and exercise', 29.99, (SELECT category_id FROM categories WHERE name = 'Sports and Outdoor')),
('Camping Tent', 'Durable camping tent for outdoor adventures', 99.99, (SELECT category_id FROM categories WHERE name = 'Sports and Outdoor')),
('Bicycle', 'Stylish bicycle for commuting and leisure rides', 299.99, (SELECT category_id FROM categories WHERE name = 'Sports and Outdoor')),
('Hiking Backpack', 'Spacious hiking backpack for hiking trips', 79.99, (SELECT category_id FROM categories WHERE name = 'Sports and Outdoor'));

-- Insert products related to Food and Beverage category
INSERT INTO products (name, description, price, category_id) VALUES
('Indomie Goreng', 'Delicious fried noodle from Indonesia', 2.99, (SELECT category_id FROM categories WHERE name = 'Food and Beverage')),
('Silverqueen Green Tea', 'Chocoloate with green tea flavour with almound chips', 5.99, (SELECT category_id FROM categories WHERE name = 'Food and Beverage')),
('Orea Chocolate', 'Oreo with chocolate flavour', 1.99, (SELECT category_id FROM categories WHERE name = 'Food and Beverage')),
('Chicken Nugget', 'Delicious chicken nugget. Healthy and yummy.', 3.99, (SELECT category_id FROM categories WHERE name = 'Food and Beverage'));

-- Insert products related to Automotive category
INSERT INTO products (name, description, price, category_id) VALUES
('Car Dash Cam', 'A dash cam is a small camera mounted on the dashboard or windshield of a vehicle to record video footage of the road ahead. It is used for safety, security, and insurance purposes.', 99.99, (SELECT category_id FROM categories WHERE name = 'Automotive')),
('Portable Tire Inflator', 'A portable tire inflator is a compact device used to inflate car tires quickly and easily. It is powered by the vehicle battery or a built-in rechargeable battery.', 49.95, (SELECT category_id FROM categories WHERE name = 'Automotive')),
('Bluetooth Car Stereo', 'A Bluetooth car stereo allows drivers to connect their smartphones wirelessly to the car audio system. It enables hands-free calling and streaming music directly from mobile devices.', 129.00, (SELECT category_id FROM categories WHERE name = 'Automotive')),
('Roof Rack', 'A roof rack is an external framework mounted on the roof of a vehicle to carry luggage, bicycles, or other bulky items. It provides additional storage space for outdoor activities and travel.', 199.99, (SELECT category_id FROM categories WHERE name = 'Automotive'));

-- Insert products related to Pet Supplies category
INSERT INTO products (name, description, price, category_id) VALUES
('Cat Litter Box', 'A cat litter box is a container filled with litter for cats to urinate and defecate in. It helps keep the environment clean and provides a designated area for cats to relieve themselves indoors.', 29.99, (SELECT category_id FROM categories WHERE name = 'Pet Supplies')),
('Dog Chew Toys', 'Dog chew toys are durable toys designed for dogs to chew on. They help satisfy a dog natural urge to chew, promote dental health, and prevent boredom.', 12.59, (SELECT category_id FROM categories WHERE name = 'Pet Supplies')),
('Fish Tank', 'A fish tank is an aquarium enclosure used to house fish and aquatic plants. It provides a controlled environment with filtration and lighting systems for the health and well-being of fish.', 99.95, (SELECT category_id FROM categories WHERE name = 'Pet Supplies')),
('Pet Grooming Kit', 'A pet grooming kit includes grooming tools such as brushes, combs, nail clippers, and scissors for grooming pets. It helps maintain their coat, nails, and overall hygiene.', 39.99, (SELECT category_id FROM categories WHERE name = 'Pet Supplies'));


--INSERT RANDOM ORDERS AND ORDERS_ITEMS
INSERT INTO orders (order_date, order_status, customer_id, finish_date) VALUES
('2024-06-20 10:00:00', 'Completed', 1, '2024-07-01 10:45:00'),
('2024-06-21 11:30:00', 'Completed', 2, '2024-06-30 11:00:00'),
('2024-06-22 12:45:00', 'Completed', 3, '2024-06-29 12:55:00'),
('2024-06-23 13:20:00', 'Completed', 4, '2024-07-12 13:23:00'),
('2024-06-24 14:50:00', 'Completed', 5, '2024-07-03 11:15:00'),
('2024-06-25 15:30:00', 'Completed', 6, '2024-07-01 09:25:00'),
('2024-06-26 16:10:00', 'Completed', 7, '2024-07-01 08:00:00'),
('2024-06-27 17:25:00', 'Completed', 8, '2024-07-02 10:35:00'),
('2024-06-28 18:40:00', 'Completed', 9, '2024-07-29 09:50:00'),
('2024-06-29 19:15:00', 'Completed', 10, NULL),
('2024-06-30 09:00:00', 'On Delivery', 11, NULL),
('2024-07-01 10:30:00', 'On Delivery', 12, NULL),
('2024-07-02 11:45:00', 'On Delivery', 13, NULL),
('2024-07-03 12:20:00', 'On Delivery', 14, NULL),
('2024-07-04 13:50:00', 'On Delivery', 15, NULL),
('2024-07-05 14:30:00', 'On Delivery', 16, NULL),
('2024-07-06 15:10:00', 'On Delivery', 17, NULL),
('2024-07-07 16:25:00', 'On Delivery', 18, NULL),
('2024-07-08 17:40:00', 'On Delivery', 19, NULL),
('2024-07-09 18:15:00', 'On Delivery', 20, NULL),
('2024-07-10 09:30:00', 'On Delivery', 21, NULL),
('2024-07-11 10:45:00', 'On Delivery', 22, NULL),
('2024-07-12 11:20:00', 'On Delivery', 23, NULL),
('2024-07-13 12:50:00', 'On Delivery', 24, NULL),
('2024-07-14 13:40:00', 'On Delivery', 25, NULL),
('2024-07-15 14:20:00', 'On Delivery', 26, NULL),
('2024-07-16 15:35:00', 'On Delivery', 27, NULL),
('2024-07-17 16:50:00', 'On Delivery', 28, NULL),
('2024-07-18 17:25:00', 'On Delivery', 29, NULL),
('2024-07-19 18:10:00', 'On Delivery', 30, NULL),
('2024-07-20 09:00:00', 'Pending', 11, NULL),
('2024-07-21 10:30:00', 'Pending', 22, NULL),
('2024-07-22 11:45:00', 'Pending', 13, NULL),
('2024-07-23 12:20:00', 'Pending', 13, NULL),
('2024-07-24 13:50:00', 'Pending', 12, NULL),
('2024-07-25 14:30:00', 'Pending', 10, NULL),
('2024-07-26 15:10:00', 'Pending', 1, NULL),
('2024-07-27 16:25:00', 'Pending', 1, NULL),
('2024-07-28 17:40:00', 'Pending', 1, NULL),
('2024-07-29 18:15:00', 'Pending', 1, NULL);

-- Insert data into orders_items table
INSERT INTO orders_items (order_id, product_id, quantity) VALUES
(1, 1, 2), 
(2, 2, 1),
(2, 3, 1),
(2, 8, 1), 
(3, 3, 1),
(3, 4, 1),
(4, 4, 3),
(5, 5, 1),
(6, 6, 2),
(6, 7, 3),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(9, 12, 3),
(9, 13, 2),
(9, 15, 1),
(10, 10, 1),
(11, 11, 2),
(11, 12, 1),
(12, 12, 1),
(13, 13, 2),
(13, 17, 1),
(14, 14, 1),
(14, 18, 2),
(15, 16, 1),
(16, 15, 1),
(16, 17, 1),
(16, 21, 1),
(16, 22, 2),
(16, 23, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(19, 20, 2), 
(20, 20, 1),
(20, 21, 1), 
(21, 21, 3),
(21, 22, 1),
(22, 23, 1),
(22, 24, 2),
(23, 27, 1),
(24, 24, 2),
(25, 25, 2),
(26, 26, 3),
(27, 27, 1),
(27, 29, 1),
(28, 28, 1),
(29, 29, 1),
(29, 1, 1),
(30, 30, 1),
(31, 31, 1),
(31, 32, 1),
(32, 32, 1),
(33, 33, 1),
(34, 34, 1),
(35, 34, 1),
(36, 34, 1),
(37, 34, 1),
(38, 34, 1),
(39, 39, 1),
(40, 40, 1);