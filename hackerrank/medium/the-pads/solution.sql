-- select concat(name, '(', substr(occupation, 1, 1), ')' ) from Occupations order by name asc;

-- select 
--    concat(name, '(',
--   case 
--        when Occupation = 'Doctor' then 'D'
--        when Occupation = 'Professor' then 'P'
--        when Occupation = 'Singer' then 'S'
--        else 'A'
--    end, ')')
-- from Occupations order by name;

SELECT CONCAT(Name, '(', left(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, LOWER(Occupation) ASC;
