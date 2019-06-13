

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vw_basic_audits1



SELECT `v1a`.`audits`      AS `Audits`, 
       `v1a`.`date`        AS `Date`, 
       `v1a`.`partnum`     AS `PartNum`, 
       `v1a`.`operation`   AS `Operation`, 
       `o`.`area`          AS `area` ,
       `v1a`.`auditor`     AS `Auditor`, 
       `v1a`.`q1`          AS `Q1`, 
       `v1a`.`q1comment`   AS `Q1Comment`, 
       `v1a`.`q2`          AS `Q2`, 
       `v1a`.`q2comment`   AS `Q2Comment`, 
       `v1a`.`q3`          AS `Q3`, 
       `v1a`.`q3comment`   AS `Q3Comment`, 
       `v1a`.`q4`          AS `Q4`, 
       `v1a`.`q4comment`   AS `Q4Comment`, 
       `v1a`.`q5`          AS `Q5`, 
       `v1a`.`q5comment`   AS `Q5Comment`, 
       `v1a`.`q6`          AS `Q6`, 
       `v1a`.`q6comment`   AS `Q6Comment`, 
       `v1a`.`q7`          AS `Q7`, 
       `v1a`.`q7comment`   AS `Q7Comment`, 
       `v1a`.`q8`          AS `Q8`, 
       `v1a`.`q8comment`   AS `Q8Comment`, 
       `v1a`.`layer_group` AS `layer_group`
FROM   (`vw_basic_audits1a` `v1a` 
        LEFT JOIN `process_steps` `o` 
               ON(( `v1a`.`operation` = `o`.`name` ))) 
               


               
---



the above came from the following and I changed the order in the above code.



select v1a.*, o.area
from vw_basic_audits1a v1a
  
  Left join process_steps o
    on v1a.Operation =  o.name  
    

    
    
    
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

vw_basic_audits1a



SELECT Min(`a`.`id`)                      AS `Audits`, 
       Cast(`a`.`created_at` AS date)     AS `Date`, 
       Group_concat((CASE `a`.`question_id` WHEN 14 THEN `a`.`body` ELSE NULL 
       end) 
       SEPARATOR ',')                     AS `PartNum`, 
       Group_concat((CASE `a`.`question_id` WHEN 15 THEN `a`.`body` ELSE NULL 
       end) 
       SEPARATOR ',')                     AS `Operation`, 
       `u`.`name`  AS `Auditor`, 
       Group_concat((CASE `a`.`question_id` WHEN 16 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q1`, 
       Group_concat((CASE `a`.`question_id` WHEN 16 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q1Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 17 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q2`, 
       Group_concat((CASE `a`.`question_id` WHEN 17 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q2Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 18 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q3`, 
       Group_concat((CASE `a`.`question_id` WHEN 18 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q3Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 19 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q4`, 
       Group_concat((CASE `a`.`question_id` WHEN 19 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q4Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 21 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q5`, 
       Group_concat((CASE `a`.`question_id` WHEN 21 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q5Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 23 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q6`, 
       Group_concat((CASE `a`.`question_id` WHEN 23 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q6Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 24 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q7`, 
       Group_concat((CASE `a`.`question_id` WHEN 24 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q7Comment`, 
       Group_concat((CASE `a`.`question_id` WHEN 25 THEN (CASE `a`.`body` WHEN 
       'Yes' 
       THEN 1 ELSE 0 
       end) ELSE NULL end) SEPARATOR ',') AS `Q8`, 
       Group_concat((CASE `a`.`question_id` WHEN 25 THEN 
       Concat(`a`.`issue_description`, ' ; ACTION: ', `a`.`action_taken`) ELSE 
       NULL end 
       ) SEPARATOR ',')                   AS `Q8Comment`,
       
       lg.layer_group

FROM   (`answers` `a` 
        LEFT JOIN `users` `u` 
               ON ( `a`.`user_id` = `u`.`id` )                     
        left join layer_groups lg
            on  u.layer_group = lg.layer_number                          
        )
GROUP  BY Cast(`a`.`created_at` AS date), 
          `u`.`auditor_inmsaccess_reporter`, 
          `a`.`created_at` 
HAVING ( Min(`a`.`survey_id`) = 8 )  
    


    
    

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


notes..

        Left join process_steps o
            on Group_concat((CASE `a`.`question_id` WHEN 15 THEN `a`.`body` ELSE NULL  end) SEPARATOR ',')  = o.name           

            

Group_concat((CASE `a`.`question_id` WHEN 15 THEN `a`.`body` ELSE NULL  end) SEPARATOR ',')



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2018-02-04



select min(`a`.`id`) AS `Audits`,cast(`a`.`created_at` as date) AS `Date`,group_concat((case `a`.`question_id` when 14 then `a`.`body` else NULL end) separator ',') AS `PartNum`,group_concat((case `a`.`question_id` when 15 then `a`.`body` else NULL end) separator ',') AS `Operation`,`u`.`auditor_inMSaccess_reporter` AS `Auditor`,group_concat((case `a`.`question_id` when 16 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q1`,group_concat((case `a`.`question_id` when 16 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q1Comment`,group_concat((case `a`.`question_id` when 17 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q2`,group_concat((case `a`.`question_id` when 17 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q2Comment`,group_concat((case `a`.`question_id` when 18 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q3`,group_concat((case `a`.`question_id` when 18 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q3Comment`,group_concat((case `a`.`question_id` when 19 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q4`,group_concat((case `a`.`question_id` when 19 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q4Comment`,group_concat((case `a`.`question_id` when 21 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q5`,group_concat((case `a`.`question_id` when 21 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q5Comment`,group_concat((case `a`.`question_id` when 23 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q6`,group_concat((case `a`.`question_id` when 23 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q6Comment`,group_concat((case `a`.`question_id` when 24 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q7`,group_concat((case `a`.`question_id` when 24 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q7Comment`,group_concat((case `a`.`question_id` when 25 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ',') AS `Q8`,group_concat((case `a`.`question_id` when 25 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ',') AS `Q8Comment` from (`answers` `a` left join `users` `u` on((`a`.`user_id` = `u`.`id`))) group by cast(`a`.`created_at` as date),`u`.`auditor_inMSaccess_reporter`,`a`.`created_at` having (min(`a`.`survey_id`) = 8)



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

