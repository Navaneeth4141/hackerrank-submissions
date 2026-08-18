select distinct city from station where not RIGHT(city, 1) in ('a', 'e', 'i', 'o', 'u');
