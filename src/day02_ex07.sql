select p2.name
from person_order
         join person p on p.id = person_order.person_id
         join menu m on m.id = person_order.menu_id
         join pizzeria p2 on p2.id = m.pizzeria_id
where p.name = 'Dmitriy'
  and person_order.order_date = '2022-01-09'
  and m.price < 800