-- write your queries here
SELECT * FROM owners LEFT JOIN vehicles ON vehicles.owner_id = owners.id;

SELECT owners.first_name, owners.last_name, COUNT(vehicles.id) AS vehicle_count
FROM owners
LEFT JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
ORDER BY owners.first_name ASC;


SELECT owners.first_name, owners.last_name, AVG(vehicles.price) AS avg_price, COUNT(vehicles.id) AS vehicle_count
FROM owners
LEFT JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
HAVING COUNT(vehicles.id) > 1 and AVG(vehicles.price) > 10000
ORDER BY owners.first_name DESC;

