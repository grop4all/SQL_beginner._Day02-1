WITH MissingDaysCTE (MissingDay)
AS
(
SELECT missing_day
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) missing_day
LEFT JOIN person_visits pv1 ON pv1.visit_date = missing_day
LEFT JOIN person_visits pv2 ON pv2.visit_date = missing_day
WHERE pv1.id IS NULL AND pv2.id IS NULL
)
SELECT MissingDay
FROM MissingDaysCTE
ORDER BY MissingDay;