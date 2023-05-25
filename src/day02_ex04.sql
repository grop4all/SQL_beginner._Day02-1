select m.pizza_name, p.name, m.price from menu m
right join pizzeria p on p.id = m.pizzeria_id
where pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza'
order by pizza_name, name