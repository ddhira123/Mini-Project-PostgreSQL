CREATE TABLE city(
	city_id serial primary key,
	name varchar(40),
	country_id int references country(country_id));