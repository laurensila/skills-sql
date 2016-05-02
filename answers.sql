1

-----

Select all fields for all brands in the brands table.

The result set for this query should be every record in the brands table.

-----


SELECT * FROM brands;


==========
2

-----

Select all fields for all car models made by Pontiac in the 
models table. 

The result set should be:
  id   | year  | brand_name |    name
-------+-------+------------+------------
    25 |  1961 | Pontiac    | Tempest
    27 |  1962 | Pontiac    | Grand Prix
    36 |  1963 | Pontiac    | Grand Prix
    42 |  1964 | Pontiac    | GTO
    43 |  1964 | Pontiac    | LeMans
    44 |  1964 | Pontiac    | Bonneville
    45 |  1964 | Pontiac    | Grand Prix
(7 rows)


-----


SELECT * FROM models WHERE brand_name = 'Pontiac';


==========
3

-----

Select the brand name and model name for all models made in 
1964 from the models table. 

The result set should be:
 brand_name |    name
------------+-------------
 Chevrolet  | Corvette
 Ford       | Mustang
 Ford       | Galaxie
 Pontiac    | GTO
 Pontiac    | LeMans
 Pontiac    | Bonneville
 Pontiac    | Grand Prix
 Plymouth   | Fury
 Studebaker | Avanti
 Austin     | Mini Cooper
 (10 rows)
 

-----


SELECT brand_name, name FROM models WHERE year = '1964';


==========
4

-----

Select the model name, brand name, and headquarters for 
the Ford Mustang from the models and brands tables.

The result set should be:
  name   | brand_name | headquarters
---------+------------+--------------
 Mustang | Ford       | Dearborn, MI
 (1 rows)


-----


SELECT models.name, brand_name, headquarters FROM models JOIN brands ON models.brand_name = brands.name WHERE models.name = 'Mustang';


==========
5

-----

Select all rows for the three oldest brands from the brands
table.

The result set should be:
  id   |    name    | founded |    headquarters     | discontinued
-------+------------+---------+---------------------+--------------
    10 | Studebaker |    1852 | South Bend, Indiana |         1967
    13 | Rambler    |    1901 | Kenosha, Washington |         1969
     6 | Cadillac   |    1902 | New York City, NY   |
(3 rows)


-----


SELECT * FROM brands ORDER BY founded LIMIT 3;


==========
6

-----

Count the Ford models in the database The output should be a 
number.

The result set should be:
   count
------------
          6
(1 rows)


-----


SELECT COUNT(name) FROM models WHERE brand_name = 'Ford';


==========
7

-----

Select the name of any and all car brands that are not 
discontinued.

The result set should be:
   name
-----------
 Ford
 Chrysler
 Chevrolet
 Cadillac
 BMW
 Buick
 Tesla
(7 rows)


-----


SELECT name FROM brands WHERE discontinued IS NULL;


==========
8

-----

Select everything from rows 15-24 of the models table in 
alphabetical order by name. The result set should have 10 records.

The result set should be:
  id   | year  | brand_name |   name
-------+-------+------------+----------
    38 |  1963 | Chevrolet  | Corvette
    11 |  1957 | Chevrolet  | Corvette
    20 |  1960 | Chevrolet  | Corvette
     5 |  1953 | Chevrolet  | Corvette
    13 |  1958 | Chevrolet  | Corvette
    10 |  1956 | Chevrolet  | Corvette
    17 |  1959 | Chevrolet  | Corvette
    26 |  1961 | Chevrolet  | Corvette
     8 |  1955 | Chevrolet  | Corvette
    28 |  1962 | Chevrolet  | Corvette
(10 rows)


-----


SELECT * FROM models ORDER BY name OFFSET 14 LIMIT 10;