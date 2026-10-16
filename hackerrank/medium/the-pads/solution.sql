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

select concat(name, '(', left(Occupation, 1), ')')
from Occupations
order by name asc;

select concat ('There are a total of ', count(Occupation), ' ', lower(Occupation), 's.')
from Occupations
group by Occupation
order by count(Occupation) asc, lower(Occupation) asc;
