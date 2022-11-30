SELECT gender,
CASE when gender = 'Male' then 'Masculino'
     when gender = 'Female' then 'Femenino'
     else gender
END AS gender_cleaned
FROM sampletable;

-- Changing the name of the gender 


SELECT id, 
	case when gender = 'Female' then 1 else 0 end as is_female, 
FROM sampletable;


-- Creating flags for indicating wherer a value is present 
