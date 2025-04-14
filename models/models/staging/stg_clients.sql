SELECT
id_client,
nom_client,
prenom_client,
email_client,
id_segment
FROM `data_VTC.clients`
WHERE email_client IS NOT NULL

SELECT
  id_client,
  nom_client,
  prenom_client,
  email_client,
  id_segment
FROM {{ source('data_VTC', 'clients') }}
WHERE email_client IS NOT NULL;