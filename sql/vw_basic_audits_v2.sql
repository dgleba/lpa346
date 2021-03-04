

pre 2020-10-16


select `bv2`.`Audits` AS `Audits`,`bv2`.`Date` AS `Date`,`bv2`.`PartNum` AS `PartNum`,`bv2`.`Operation` AS `Operation`,`o`.`area` AS `area`,`bv2`.`Auditor` AS `Auditor`,`bv2`.`Q1` AS `Q1`,`bv2`.`Q1Comment` AS `Q1Comment`,`bv2`.`Q2` AS `Q2`,`bv2`.`Q2Comment` AS `Q2Comment`,`bv2`.`Q3` AS `Q3`,`bv2`.`Q3Comment` AS `Q3Comment`,`bv2`.`Q4` AS `Q4`,`bv2`.`Q4Comment` AS `Q4Comment`,`bv2`.`Q5` AS `Q5`,`bv2`.`Q5Comment` AS `Q5Comment`,`bv2`.`layer_group` AS `layer_group` from (`vw_basic_audits_v2_part1` `bv2` left join `process_steps` `o` on((`bv2`.`Operation` = `o`.`name`)))



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-10-16[Oct-Fri]15-47PM 


select `bv2`.`Audits` AS `Audits`,
`bv2`.`Date` AS `Date`,
`bv2`.`PartNum` AS `PartNum`,
`bv2`.`Operation` AS `Operation`,
`o`.`area` AS `area`,
`bv2`.`Auditor` AS `Auditor`,
`bv2`.`Q1` AS `Q1`,
`bv2`.`Q1Comment` AS `Q1Comment`,
`bv2`.`Q2` AS `Q2`,
`bv2`.`Q2Comment` AS `Q2Comment`,
`bv2`.`Q3` AS `Q3`,
`bv2`.`Q3Comment` AS `Q3Comment`,
`bv2`.`Q4` AS `Q4`,
`bv2`.`Q4Comment` AS `Q4Comment`,
`bv2`.`Q5` AS `Q5`,
`bv2`.`Q5Comment` AS `Q5Comment`,
`bv2`.`Q6` AS `Q6`,
`bv2`.`Q6Comment` AS `Q6Comment`,
`bv2`.`layer_group` AS `layer_group` from (`vw_basic_audits_v2_part1` `bv2` left join `process_steps` `o` on((`bv2`.`Operation` = `o`.`name`)))