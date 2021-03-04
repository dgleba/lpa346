

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-10-16[Oct-Fri]15-49PM 


select min(`a`.`id`) AS `Audits`,cast(`a`.`created_at` as date) AS `Date`,group_concat((case `a`.`question_id` when 82 then `a`.`body` else NULL end) separator ', 
') AS `PartNum`,group_concat((case `a`.`question_id` when 83 then `a`.`body` else NULL end) separator ', 
') AS `Operation`,`u`.`name` AS `Auditor`,group_concat((case `a`.`question_id` when 84 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q1`,group_concat((case `a`.`question_id` when 84 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q1Comment`,group_concat((case `a`.`question_id` when 85 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q2`,group_concat((case `a`.`question_id` when 85 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q2Comment`,group_concat((case `a`.`question_id` when 86 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q3`,group_concat((case `a`.`question_id` when 86 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q3Comment`,group_concat((case `a`.`question_id` when 87 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q4`,group_concat((case `a`.`question_id` when 87 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 

') AS `Q4Comment`,group_concat((case `a`.`question_id` when 88 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', ') AS `Q5`,
group_concat((case `a`.`question_id` when 88 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', ') AS `Q5Comment`,

`lg`.`layer_group` AS `layer_group` 

from ((`answers` `a` left join `users` `u` on((`a`.`user_id` = `u`.`id`))) 
left join `layer_groups` `lg` on((`u`.`layer_group` = `lg`.`layer_number`))) 
group by cast(`a`.`created_at` as date),`u`.`auditor_inMSaccess_reporter`,`a`.`created_at` having (min(`a`.`survey_id`) = 13)



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-10-16[Oct-Fri]15-47PM 


select min(`a`.`id`) AS `Audits`,cast(`a`.`created_at` as date) AS `Date`,group_concat((case `a`.`question_id` when 82 then `a`.`body` else NULL end) separator ', 
') AS `PartNum`,group_concat((case `a`.`question_id` when 83 then `a`.`body` else NULL end) separator ', 
') AS `Operation`,`u`.`name` AS `Auditor`,group_concat((case `a`.`question_id` when 84 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q1`,group_concat((case `a`.`question_id` when 84 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q1Comment`,group_concat((case `a`.`question_id` when 85 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q2`,group_concat((case `a`.`question_id` when 85 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q2Comment`,group_concat((case `a`.`question_id` when 86 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', 
') AS `Q3`,group_concat((case `a`.`question_id` when 86 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', 
') AS `Q3Comment`,group_concat((case `a`.`question_id` when 87 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', ') AS `Q4`,
group_concat((case `a`.`question_id` when 87 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', ') AS `Q4Comment`,

group_concat((case `a`.`question_id` when 88 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', ') AS `Q5`,
group_concat((case `a`.`question_id` when 88 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', ') AS `Q5Comment`,

group_concat((case `a`.`question_id` when 89 then (case `a`.`body` when 'Yes' then 1 else 0 end) else NULL end) separator ', ') AS `Q6`,
group_concat((case `a`.`question_id` when 89 then concat(`a`.`issue_description`,' ; ACTION: ',`a`.`action_taken`) else NULL end) separator ', ') AS `Q6Comment`,

`lg`.`layer_group` AS `layer_group` 

from ((`answers` `a` left join `users` `u` on((`a`.`user_id` = `u`.`id`))) 
left join `layer_groups` `lg` on((`u`.`layer_group` = `lg`.`layer_number`))) 
group by cast(`a`.`created_at` as date),`u`.`auditor_inMSaccess_reporter`,`a`.`created_at` having (min(`a`.`survey_id`) = 13)