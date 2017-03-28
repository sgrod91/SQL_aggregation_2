CREATE TABLE restaurant (
  id serial PRIMARY KEY,
  name varchar,
  address varchar,
  category varchar
);

CREATE TABLE reviewer (
  id serial PRIMARY KEY,
  name varchar,
  email varchar,
  karma integer DEFAULT 0 check (karma <= 7)
);

CREATE TABLE review (
  id serial PRIMARY KEY,
  reviewer_id integer REFERENCES reviewer,
  stars integer DEFAULT 1 check (stars <= 5),
  title varchar,
  review varchar,
  restaurant_id integer REFERENCES restaurant
);

insert into restaurant values
	 (default, 'Taste of Thai', '8926 Town and Country Cir, Knoxville, TN 37923', 'Thai'),
  (default, 'Monterrey', '3865 Lavista Rd, Tucker, GA 30084', 'Mexican'),
  (default, 'Fox Bros.', '1238 DeKalb Ave NE, Atlanta, GA 30307', 'BBQ')

insert into reviewer values
	(default, 'Steven', 'sgrod91@gmail.com', 7),
  (default, 'Justin', 'tbriley@gmail.com', 5),
  (default, 'Todd', 'justin@gmail.com', 1)

insert into review values
  (default, 1, 5, 'Favorite Place', 'The Massaman Curry is the bomb! Everything tastes amazing.', 1),
  (default, 2, 4, 'I like BBQ', 'I have not been before but I like BBQ so yes!', 3),
  (default, 3, 1, 'I do not like', 'I am very strict so there is a good chance I do not like this place', 2)
