# Projet-BD
Projet de Base de données, dans le cadre du module 5 algèbre relationnel et SQL 📊
Par le binome :
Yahya TAMOUCH Groupe 03
# Projet Gestion Hôtel
### Partie 1 : Modélisation et Interrogation SQL

#### Rôle de chaque fichier
- `create_database.sql` : Crée la base de données `hotel_db` où tout sera stocké.
- `create_tables.sql` : Définit les tables (comme Hotel, Chambre, Client, etc.) avec leurs colonnes et liens entre elles.
- `insert_data.sql` : Ajoute les données de départ dans les tables (clients, réservations, etc.).
- `queries.sql` : Contient les requêtes SQL pour afficher des infos, comme les réservations ou les clients.

#### Logique du raisonnement
Nous avons commencé par créer la base avec `create_database.sql`, puis nous avons construit les tables avec `create_tables.sql`. Ensuite, nous avons inséré des données de test avec `insert_data.sql` pour avoir quelque chose à travailler. Enfin, nous avons utilise `queries.sql` pour poser des questions à la base et voir les résultats. Tout est fait dans cet ordre pour construire étape par étape.

### Partie 2 : Interface Web avec Python, SQLite, Streamlit

#### Pourquoi Python, SQLite, et Streamlit ?
- **Python** : C’est un langage simple pour coder et connecter des bases de données.
- **SQLite** : Une petite base de données qui vit dans un fichier, parfaite pour un projet comme celui-ci sans serveur compliqué.
- **Streamlit** : Ça me permet de faire une interface web rapide pour montrer les données et ajouter des trucs, sans trop de boulot.

#### Liaison logique
Python fait le lien entre SQLite (où les données sont stockées) et Streamlit (où elles sont affichées). Avec Python, j’exécute des requêtes SQL pour aller chercher ou ajouter des infos dans la base, et Streamlit les montre joliment sur une page web.

#### Rôle de chaque fichier .py
- `create_sqlite_db.py` : Crée la base `hotel.db` et met les données de départ avec des commandes SQL.
- `hotel_app.py` : Contient l’interface Streamlit. Elle connecte SQLite, affiche les listes (réservations, clients), et permet d’ajouter un client ou une réservation.

