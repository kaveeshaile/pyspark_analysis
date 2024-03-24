-- Databricks notebook source
select * from hr

-- COMMAND ----------

select sum(EmployeeCount),Age from hr
where attrition='Yes'
group by Age

-- COMMAND ----------

select
  sum(EmployeeCount),
  case
    when Age between 20
    and 25 then '20-25'
    when Age between 26
    and 32 then '26-32'
    when Age between 33
    and 40 then '40+' else 'elder'
  end Age_grp
from
  hr
where
  attrition = 'Yes'
group by
  Age

-- COMMAND ----------

select sum(EmployeeCount),Department from hr
where attrition='Yes'
group by Department

-- COMMAND ----------

select
  sum(EmployeeCount),
  case
    when Education = 1 then 'below collage'
    when Education = 2 then 'upper collage'
    when Education = 3 then 'high collage'
    else 'doc'
  end ed_group
from
  hr
where
  attrition = 'Yes'
group by
  Education

-- COMMAND ----------

select
  sum(EmployeeCount),
  EnvironmentSatisfaction
from
  hr
  group by 2

-- COMMAND ----------


