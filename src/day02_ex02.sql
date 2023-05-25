select CASE WHEN p.name IS NULL THEN '-' ELSE  p.name END as person_name,
       CASE WHEN pv.visit_date IS NULL THEN NULL ELSE pv.visit_date END as visit_date,
       CASE WHEN pi.name IS NULL THEN '-' ELSE  pi.name END as pizzeria_name
       from person p
right join person_visits pv on p.id = pv.person_id
right join pizzeria pi on pv.pizzeria_id = pi.id
order by  person_name, visit_date, pizzeria_name