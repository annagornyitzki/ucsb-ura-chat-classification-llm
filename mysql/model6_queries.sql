-- Get total number of records in sum_model
select count-- Fix text for chat ID 158
update sum_6 set text = 'The players agree to always trade and vote "yes" They speculate whether the system is inserting "no" votes to test trust, but most believe it\'s not happening. They confirm there are at least 18 rounds and estimate their final payout.') from sum_model;

-- Count records per simulation
select Simulation,count(*) from sum_model sm 
group by Simulation 
order by 1;

-- Display all records ordered by simulation
select * from sum_model order by Simulation;

-- totals_model6.csv

-- Aggregate coordination and unknown values by chat ID and text
SELECT
    id_chat,
    text,
    SUM(Coordination) AS Coordination,
    SUM(Unknown) AS Unknown
FROM
    sum_6
GROUP BY
    id_chat, text
ORDER BY
    id_chat;

----

-- Find chat IDs with duplicate text entries
select id_chat,count(*)
from
(
SELECT
    id_chat,
    text,
    SUM(Coordination) AS Coordination,
    SUM(Unknown) AS Unknown
FROM
    sum_6
GROUP BY
    id_chat, text
ORDER BY
    id_chat
) aaa
group by id_chat
having count(*) > 1;


---
-- Create backup of sum_6 table before making changes
create table sum_6_bkp as select * from sum_6;

-- Fix text for chat ID 149
update sum_6 set text = 'The players agree that trading and always choosing "yes" is the best strategy to maximize earnings. They confirm their approach and discuss how often they’ve been marked "red”.'
where id_chat = 149
and text != 'The players agree that trading and always choosing "yes" is the best strategy to maximize earnings. They confirm their approach and discuss how often they’ve been marked "red”.';

-- fixing 158
update sum_6 set text = 'The players agree to always trade and vote "yes" They speculate whether the system is inserting "no" votes to test trust, but most believe it isn\'t happening. They confirm there are at least 18 rounds and estimate their final payout.'
where id_chat = 158
and text != 'The players agree to always trade and vote "yes" They speculate whether the system is inserting "no" votes to test trust, but most believe it isn\'t happening. They confirm there are at least 18 rounds and estimate their final payout.';


select * from sum_6;

