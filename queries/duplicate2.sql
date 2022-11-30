SELECT column_a, column_b, column_c, count(*) as records
FROM duplicate
GROUP BY 1,2,3 
HAVING count(*) > 1;

-- Tells you wheter there are any cases of duplicates, without using subqueries 



SELECT records, count(*)
FROM
(
	SELECT column_a, column_b, column_c, count(*) as records
	FROM duplicate 
	GROUP BY 1,2,3

) a 
WHERE records > 1
GROUP BY 1
;


-- subqueries may be better to organize logic 
