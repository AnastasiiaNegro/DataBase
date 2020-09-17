1. SELECT name, first_name, city from car_owners 
INNER JOIN cars on cars.id = car_owners.id_car 
INNER JOIN owners on owners.id = car_owners.id_owner 
ORDER by city ASC;

2. SELECT name, first_name, city from car_owners 
INNER JOIN cars on cars.id = car_owners.id_car 
INNER JOIN owners on owners.id = car_owners.id_owner 
WHERE owners.city = 'Minsk';

3. SELECT name, model, number, first_name, last_name, city from car_owners 
INNER JOIN cars on cars.id = car_owners.id_car 
INNER JOIN owners on owners.id = car_owners.id_owner 
WHERE car_owners.id_car = 3;

4. SELECT name, first_name, city FROM cars 
LEFT JOIN owners on owners.id = cars.id;

5. SELECT name, model, last_name, first_name, city FROM cars 
LEFT JOIN owners
on owners.id = cars.id
UNION
SELECT name, model, last_name, first_name, city FROM owners LEFT JOIN cars
on cars.id = owners.id;

6. SELECT name, model FROM cars
UNION
SELECT first_name, city FROM owners;