# Select all catecholamins
SELECT
  drugname,
  drugrate,
  infusionoffset,
  drugamount,
  patientweight
FROM
  [oim-analyse:eicu.infusiondrug]
WHERE
  drugname LIKE "%Dobutamine%"
  OR drugname LIKE "%Dopamine%"
  OR drugname LIKE "%Epinephrine"
  OR drugname LIKE "%Norepinephrine%"
  AND drugrate IS NOT NULL
