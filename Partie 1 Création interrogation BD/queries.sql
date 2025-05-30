-- a. Afficher la liste des réservations avec le nom du client et la ville de l’hôtel réservé
SELECT r.Id_Réservation, c.Nom_complet, h.Ville
FROM Réservation r
JOIN Client c ON r.Id_Client = c.Id_Client
JOIN Chambre ch ON r.Id_Réservation = ch.Id_Chambre
JOIN Hotel h ON ch.Id_Hotel = h.Id_Hotel;

-- b. Afficher les clients qui habitent à Paris
SELECT Nom_complet, Adresse, Ville
FROM Client
WHERE Ville = 'Paris';

-- c. Calculer le nombre de réservations faites par chaque client
SELECT c.Nom_complet, COUNT(r.Id_Réservation) as Nombre_Réservations
FROM Client c
LEFT JOIN Réservation r ON c.Id_Client = r.Id_Client
GROUP BY c.Id_Client, c.Nom_complet;

-- d. Donner le nombre de chambres pour chaque type de chambre
SELECT tc.Type, COUNT(ch.Id_Chambre) as Nombre_Chambres
FROM Type_Chambre tc
LEFT JOIN Chambre ch ON tc.Id_Type = ch.Id_Type
GROUP BY tc.Id_Type, tc.Type;

-- e. Afficher la liste des chambres qui ne sont pas réservées pour une période donnée
SELECT ch.Id_Chambre, ch.Numéro, ch.Étage
FROM Chambre ch
LEFT JOIN Réservation r ON ch.Id_Chambre = r.Id_Réservation
WHERE r.Id_Réservation IS NULL
OR (r.Date_arrivée > '2025-06-18' OR r.Date_de_part < '2025-06-15');