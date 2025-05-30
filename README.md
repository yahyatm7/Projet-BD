# Projet-BD
Projet de Base de données, dans le cadre du module 5 algèbre relationnel et SQL 📊
# Projet Gestion Hôtel

### Partie 1 : Modélisation et Interrogation SQL

#### Rôle de chaque fichier
- `create_database.sql` : Crée la base de données `hotel_db`.
- `create_tables.sql` : Définit les tables (Hotel, Chambre, etc.) avec leurs colonnes et relations.
- `insert_data.sql` : Insère les données initiales dans les tables.
- `queries.sql` : Contient les requêtes SQL pour afficher des informations (réservations, clients, etc.).

#### Logique du raisonnement
On commence par créer la base, puis les tables, on insère les données, on vérifie avec `desc`, on interroge avec `queries`, et enfin on peut tout vider avec `drop` pour recommencer.

#### Étapes pour tester
1. Ouvre MySQL Workbench.
2. Exécute `create_database.sql` pour créer la base.
3. Exécute `create_tables.sql` pour les tables.
4. Exécute `insert_data.sql` pour insérer les données.
5. Exécute `desc.sql` pour voir les structures.
6. Exécute `queries.sql` pour tester les requêtes.
7. Exécute `drop.sql` pour tout supprimer.

#### Définition de SQLite
SQLite est une base de données légère, intégrée, sans serveur, idéale pour des projets simples ou tests.

### Partie 2 : Interface Web avec Python, SQLite, Streamlit

#### Pourquoi Python, SQLite, et Streamlit ?
- Python : Facile pour coder et connecter des bases.
- SQLite : Base légère intégrée, parfaite pour stocker les données.
- Streamlit : Crée une interface web simple et interactive.

#### Liaison logique
Python relie SQLite (où les données sont stockées) à Streamlit (où elles sont affichées), en exécutant des requêtes SQL pour gérer les données.

#### Rôle de chaque fichier .py
- `create_sqlite_db.py` : Crée la base `hotel.db` et insère les données initiales.
- `hotel_app.py` : Contient l’interface Streamlit pour consulter et ajouter des données via SQL.

#### Logique du raisonnement
On crée d’abord la base avec `create_sqlite_db.py`, puis on utilise `hotel_app.py` pour interagir avec elle via une interface web, en testant toutes les fonctionnalités.

#### Étapes pour tester
1. Ouvre une invite de commande.
2. Navigue vers `Desktop` avec `cd C:\Users\pc\Desktop`.
3. Exécute `python create_sqlite_db.py` pour créer la base.
4. Exécute `streamlit run hotel_app.py`, passe le message, et ouvre `http://localhost:8501`.
5. Teste : liste des réservations, clients, chambres disponibles, ajoute un client et une réservation.
6. Arrête avec Ctrl+C.
