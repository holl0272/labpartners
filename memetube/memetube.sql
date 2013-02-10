CREATE TABLE videos
(
  id serial8 primary key,
  title varchar(25),
  description text,
  url text,
  genre varchar(25)
);