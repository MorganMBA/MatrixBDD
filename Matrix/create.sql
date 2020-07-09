CREATE TABLE dbo.APPARAITRE
(
	IDAPPARAT int identity(0, 1) not null,
	constraint PK_APPARAITRE primary key(IDAPPARAT)
);

CREATE DATABASE Matrix;

USE Matrix;



CREATE TABLE dbo.LIEU
(
	IDLIEU int identity(0, 1) not null,
	X int not null,
	Y int not null,
	Z int not null,
	NOM varchar(50) not null,
	DESCRIP varchar(50),
	constraint PK_LIEU primary key(IDLIEU)
);

CREATE TABLE dbo.ROL
(
	IDROL int identity(0, 1) not null,
	NOM varchar(50) not null,
	constraint PK_ROL primary key(IDROL)
);

CREATE TABLE dbo.TYP
(
	IDTYP int identity(0, 1) not null,
	NOM varchar(50) not null,
	constraint PK_TYP primary key(IDTYP)
);

CREATE TABLE dbo.CATEGORIE_ARME
(
	IDCATARME int identity(0, 1) not null,
	TYPE_MUNITION varchar(50)  not null,
	QTEMAX int not null,
	constraint PK_CATEGORIE_ARME primary key(IDCATARME)
);

CREATE TABLE dbo.ARME
(
	IDARME int identity(0, 1) not null,
	NOM varchar(50) not null,
	DESCRIP varchar(50),
	constraint PK_ARME primary key(IDARME)
);


CREATE TABLE dbo.CARACTERISTIQUE
(
	IDCARACT int identity(0, 1) not null,
	INTITULE varchar(50) not null,
	constraint PK_CARACTERISTIQUE primary key(IDCARACT)
);


CREATE TABLE dbo.CATEGORIE
(
	IDCAT int identity(0, 1) not null,
	NOM varchar(50) not null,
	constraint PK_CATEGORIE primary key(IDCAT)
);

CREATE TABLE dbo.GROUPE
(
	IDGROUPE int identity(0, 1) not null,
	LOCALISATION varchar(50) not null,
	constraint PK_GROUPE primary key(IDGROUPE)
);

CREATE TABLE dbo.TELEPHONE
(
	IDTEL int identity(0, 1) not null,
	CONTROLABLE bit not null,
	constraint PK_TELEPHONE primary key(IDTEL)
);

CREATE TABLE dbo.PERSONNAGE
(
	IDPERS int identity(0, 1) not null,
	NOM varchar(50)
	constraint PK_PERSONNAGE primary key(IDPERS)
);

CREATE TABLE dbo.POSSEDER
(
	IDPOSS int identity(0, 1) not null,
	constraint PK_POSSEDER primary key(IDPOSS)
);

CREATE TABLE dbo.PLACER
(
	IDPLACE int identity(0, 1) not null,
	constraint PK_PLACER primary key(IDPLACE)
);

CREATE TABLE dbo.APPARAITRE
(
	IDAPPARAT int identity(0, 1) not null,
	constraint PK_APPARAITRE primary key(IDAPPARAT)
);

