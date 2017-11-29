

-- current..


-- show lpa operations not matching parts/operations_list..


CREATE OR REPLACE
  VIEW vw_reported_ops_not_matching_list
  AS  select 
  part_name, process_name, part_w_step, count, PartNum, Operation
  from vw_num_audits_pn_op_recent  as c 
     left join vw_parts_w_steps  as po  on concat(part_name,process_name)=concat(PartNum,Operation) 
  order by part_name,process_name,PartNum,Operation asc



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





older info..

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-11-14[Nov-Tue]12-31PM



CREATE OR REPLACE
  VIEW vw_count_audits_vs_process_steps
  AS
  select 
  part_name, process_name, part_w_step, count
  from vw_parts_w_steps  as po
     left join  vw_num_audits_pn_op_recent  as c  on concat(part_name,process_name)=concat(PartNum,Operation) 
  order by count asc
  

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-10-12[Oct-Thu]13-30PM

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-11-14[Nov-Tue]12-49PM


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    