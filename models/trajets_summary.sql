SELECT
  sc.nom_segment,
  tv.nom_type_vehicule,
  COUNT(t.id_trajet) AS nombre_trajets,
  SUM(t.montant_total) AS total_revenus
FROM `data_VTC.trajets` t
JOIN `data_VTC.clients` c ON t.id_client = c.id_client
JOIN `data_VTC.Segments_clients` sc ON c.id_segment = sc.id_segment
JOIN `data_VTC.vehicule` v ON t.id_vehicule = v.id_vehicule
JOIN `data_VTC.Types_vehicule` tv ON v.id_type_vehicule = tv.id_type_vehicule
GROUP BY sc.nom_segment, tv.nom_type_vehicule
ORDER BY total_revenus DESC