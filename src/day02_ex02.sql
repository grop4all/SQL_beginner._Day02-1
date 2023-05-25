select CASE WHEN p.name IS NULL THEN '-' ELSE  p.name END,
       CASE WHEN pv.visit_date IS NULL THEN NULL ELSE pv.visit_date END,
       CASE WHEN pi.name IS NULL THEN '-' ELSE  pi.name END
       from person p
right join person_visits pv on p.id = pv.person_id
right join pizzeria pi on pv.pizzeria_id = pi.id
order by  p.name, pv.visit_date, pi.name