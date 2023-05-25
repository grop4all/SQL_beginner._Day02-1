SELECT missing_day from person_visits pv1
    join person_visits pv2 on (pv1.id != pv2.id) and
                              (pv1.visit_date = pv2.visit_date)
    join generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval)
        as missing_day on (missing_day != pv1.visit_date and missing_day != pv2.visit_date)
    where pv1.person_id = 1 and pv2.person_id = 2
    order by missing_day