-- Assessment 2

SELECT * FROM cd.bookings;
SELECT * FROM cd.facilities;
SELECT * FROM cd.members;

-- challenge 1

SELECT * FROM cd.facilities;

--challenge 2
SELECT name, membercost FROM cd.facilities;

-- challenge 3
SELECT * FROM cd.facilities
WHERE membercost > 0;

-- challenge 4
SELECT facid,name,membercost, monthlymaintenance FROM cd.facilities
WHERE membercost != 0 AND membercost < monthlymaintenance/50;

-- challege 5

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

--challenge 6

SELECT * FROM cd.facilities
WHERE facid = 1 OR facid = 5;

    -- without using or

SELECT * FROM cd.facilities
WHERE facid IN(1,5);

--challenge 7
SELECT * FROM cd.members;

SELECT * FROM cd.members
WHERE joindate > '2012-09-01';

--challenge 8
SELECT DISTINCT(surname) FROM cd.members
ORDER BY surname
LIMIT 10;


--challenge 9
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

--challenge 10

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost > 10;

--challenge 11
-- SELECT * FROM cd.members
-- WHERE EXTRACT(MONTH FROM joindate) = 9;

SELECT facid,COUNT(slots) FROM cd.bookings
WHERE EXTRACT(MONTH FROM starttime) = 9
GROUP BY facid
ORDER BY COUNT(slots);

-- SELECT * FROM cd.bookings AS b
-- INNER JOIN cd.members AS m ON b.memid = m.memid
-- WHERE EXTRACT(MONTH FROM m.joindate) = 9
-- ORDER BY slots;












