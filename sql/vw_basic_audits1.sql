

-- Current:

create or replace view vw_basic_audits1 as
      SELECT min(id) as Audits, date(created_at) as Date,
        GROUP_CONCAT((CASE question_id WHEN 14 THEN body ELSE NULL END)) AS PartNum,
        GROUP_CONCAT((CASE question_id WHEN 15 THEN body ELSE NULL END)) AS Operation,
        user_id as Auditor,

        GROUP_CONCAT((CASE question_id WHEN 16 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q1,
        GROUP_CONCAT((CASE question_id WHEN 16 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q1Comment,       

        GROUP_CONCAT((CASE question_id WHEN 17 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q2,
        GROUP_CONCAT((CASE question_id WHEN 17 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q2Comment,       

        GROUP_CONCAT((CASE question_id WHEN 18 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q3,
        GROUP_CONCAT((CASE question_id WHEN 18 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q3Comment,       

        GROUP_CONCAT((CASE question_id WHEN 19 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q4,
        GROUP_CONCAT((CASE question_id WHEN 19 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q4Comment,       

        GROUP_CONCAT((CASE question_id WHEN 21 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q5,
        GROUP_CONCAT((CASE question_id WHEN 21 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q5Comment,       
        
        GROUP_CONCAT((CASE question_id WHEN 23 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q6,
        GROUP_CONCAT((CASE question_id WHEN 23 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q6Comment,       

        GROUP_CONCAT((CASE question_id WHEN 24 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q7,
        GROUP_CONCAT((CASE question_id WHEN 24 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q7Comment,       
        
        GROUP_CONCAT((CASE question_id WHEN 25 THEN 
            ( Case body when 'Yes' Then 1 ELSE 0 End ) ELSE NULL END)) AS Q8,
        GROUP_CONCAT((CASE question_id WHEN 25 THEN concat(issue_description,' ; ACTION: ' ,action_taken) ELSE NULL END)) AS Q8Comment       

        FROM answers 
      GROUP BY Date, Auditor 
        having min(survey_id)=8        
        



===================================================
===================================================
===================================================
===================================================
===================================================
===================================================
        
        
        
        
        
        older stuff...
        
        
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-08-18[Aug-Fri]13-34PM



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        