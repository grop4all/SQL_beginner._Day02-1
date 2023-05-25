select distinct pizza_name, p2.name as pizzeria_name
from person_order
         join menu m on person_order.menu_id = m.id
         join person p on p.id = person_order.person_id
         join pizzeria p2 on p2.id = m.pizzeria_id
where p.name='Anna' or p.name='Denis'
order by pizza_name, pizzeria_name