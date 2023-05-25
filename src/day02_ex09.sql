select name
from person
         join person_order po
              on person.id = po.person_id
         join menu m on m.id = po.menu_id
where person.gender = 'female'
  and m.pizza_name = 'pepperoni pizza'
  and person.name in (select person.name
                      from person
                               join person_order po
                                    on person.id = po.person_id
                               join menu m on m.id = po.menu_id
                      where person.gender = 'female'
                        and m.pizza_name = 'cheese pizza')
order by name