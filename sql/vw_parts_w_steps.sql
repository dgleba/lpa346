

-- current..

CREATE OR REPLACE
  VIEW vw_parts_w_steps
  AS 
  Select 
      p.name as part_name, o.name as process_name, Concat(p.name," - ",o.name) as part_w_step, p.id partid,  j.part_number_id, j.process_step_id, o.id processid
    FROM part_numbers as p
     left join    part_numbers_process_steps as j  on p.id=j.part_number_id
     left join process_steps as o   on o.id=j.process_step_id
   order by p.name,o.name



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

older info..

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-10-12[Oct-Thu]13-30PM



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   