SELECT * FROM flights;
SELECT destination, duration FROM flights;
SELECT * FROM flights WHERE destination = 'Paris';
SELECT * FROM flights WHERE id = 3;
SELECT * FROM flights WHERE destination = 'Paris' AND duration > 500;
SELECT AVG(duration) FROM flights;
SELECT AVG(duration) FROM flights WHERE origin = 'New York';
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights WHERE origin = 'New York';
SELECT MIN(duration) FROM flights;
SELECT * FROM flights WHERE origin IN ('New York', 'Lima');
SELECT * FROM flights WHERE origin LIKE '%a%';
SELECT * FROM flights LIMIT 2;
SELECT * FROM flights ORDER BY duration ASC LIMIT 3;
SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*)
    FROM flights GROUP BY origin
    HAVING COUNT(*) > 1;

SELECT origin, destination, name FROM flights JOIN passengers
    ON passengers.flight_id = flights.id

SELECT origin, destination, name FROM flights LEFT JOIN passengers
    ON passengers.flight_id = flights.id

SELECT flight_id FROM   passengers GROUP BY flight_id HAVING COUNT(*) > 1; 

SELECT * FROM flights WHERE id IN
    (SELECT flight_id FROM   passengers GROUP BY flight_id HAVING COUNT(*) > 1);