CREATE TABLE Hotel (
    Id_Hotel INT PRIMARY KEY,
    Ville VARCHAR(100),
    Pays VARCHAR(100),
    Code_postal INT
);

CREATE TABLE Chambre (
    Id_Chambre INT PRIMARY KEY,
    Étage INT,
    Numéro INT,
    fumeurs BOOLEAN,
    Id_Hotel INT,
    Id_Type INT,
    FOREIGN KEY (Id_Hotel) REFERENCES Hotel(Id_Hotel),
    FOREIGN KEY (Id_Type) REFERENCES Type_Chambre(Id_Type)
);

CREATE TABLE Type_Chambre (
    Id_Type INT PRIMARY KEY,
    Type VARCHAR(100),
    Tarif INT
);

CREATE TABLE Client (
    Id_Client INT PRIMARY KEY,
    Adresse VARCHAR(200),
    Ville VARCHAR(100),
    Code_postal INT,
    E_mail VARCHAR(100),
    Numéro_de_téléphone VARCHAR(20),
    Nom_complet VARCHAR(100)
);

CREATE TABLE Réservation (
    Id_Réservation INT PRIMARY KEY,
    Date_arrivée DATE,
    Date_de_part DATE,
    Id_Client INT,
    FOREIGN KEY (Id_Client) REFERENCES Client(Id_Client)
);

CREATE TABLE Prestation (
    Id_Prestation INT PRIMARY KEY,
    Prix INT,
    Prestation VARCHAR(100)
);

CREATE TABLE Évaluation (
    Id_Évaluation INT PRIMARY KEY,
    Date_arrivée DATE,
    La_note INT,
    Texte_descriptif VARCHAR(200),
    Id_Réservation INT,
    FOREIGN KEY (Id_Réservation) REFERENCES Réservation(Id_Réservation)
);