select distinct person.name
from person
         join person_order po on person.id = po.person_id
         join menu m on m.id = po.menu_id
where person.gender = 'male'
  and (person.address = 'Samara'
    or person.address = 'Moscow')
  and (m.pizza_name = 'pepperoni pizza'
    or m.pizza_name = 'mushroom pizza')