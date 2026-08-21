select h.hacker_id, h.name 
from 
    submissions as s join challenges as c on 
        c.challenge_id = s.challenge_id 
    join difficulty as d on 
        d.difficulty_level = c.difficulty_level 
    join hackers as h on 
        h.hacker_id = s.hacker_id and d.score = s.score 
group by h.hacker_id, h.name having count(s.challenge_id) > 1 order by count(s.challenge_id) desc, s.hacker_id;
