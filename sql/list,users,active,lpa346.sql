

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-11-14[Nov-Tue]09-37AM

select distinct user_id,email, min(a.created_at) , max(a.created_at), count(distinct(a.created_at)) as number_of_audits
from answers a
left join users u on a.user_id = u.id
group by email

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2017-11-14[Nov-Tue]09-34AM

old..

select distinct user_id,email, min(a.created_at)
from answers a
left join users u on a.user_id = u.id
group by email



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
