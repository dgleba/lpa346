
-- current..

CREATE OR REPLACE
  VIEW vw_num_audits_pn_op_recent
  AS 
SELECT count(*) AS `count`, `vw_basic_audits1`.`PartNum` AS `PartNum`, `vw_basic_audits1`.`Operation` AS `Operation`
FROM `vw_basic_audits1`
WHERE date(`vw_basic_audits1`.`Date`) BETWEEN date(date_add(now(), INTERVAL -90 day))
   AND date(date_add(now(), INTERVAL -1 day))
GROUP BY `vw_basic_audits1`.`PartNum`, `vw_basic_audits1`.`Operation`
ORDER BY count, `vw_basic_audits1`.`PartNum` ASC, `vw_basic_audits1`.`Operation` ASC




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

