USE Matrix;


ALTER TABLE dbo.ARME
ADD IDCATARME int;

ALTER TABLE ARME
ADD CONSTRAINT FK_CATEGORIE_ARME
FOREIGN KEY (IDCATARME) REFERENCES CATEGORIE_ARME(IDCATARME);

ALTER TABLE dbo.APPARAITRE
ADD IDLIEU int;

ALTER TABLE APPARAITRE
ADD CONSTRAINT FK_LIEU
FOREIGN KEY (IDLIEU) REFERENCES LIEU(IDLIEU);

ALTER TABLE dbo.APPARAITRE
ADD IDARME int;

ALTER TABLE APPARAITRE
ADD CONSTRAINT FK_ARME
FOREIGN KEY (IDARME) REFERENCES ARME(IDARME);

ALTER TABLE dbo.LIEU
ADD IDTYP int;

ALTER TABLE LIEU
ADD CONSTRAINT FK_TYP
FOREIGN KEY (IDTYP) REFERENCES TYP(IDTYP);

ALTER TABLE dbo.LIEU
ADD IDROL int;

ALTER TABLE LIEU
ADD CONSTRAINT FK_ROL
FOREIGN KEY (IDROL) REFERENCES ROL(IDROL);


ALTER TABLE dbo.POSSEDER
ADD IDPERS int;

ALTER TABLE dbo.POSSEDER
ADD CONSTRAINT FK_POSSEDER_PERSONNAGE
FOREIGN KEY (IDPERS) REFERENCES dbo.PERSONNAGE(IDPERS);

ALTER TABLE dbo.POSSEDER
ADD IDCARACT int;

ALTER TABLE POSSEDER
ADD CONSTRAINT FK_POSSEDER_CARACTERISTIQUE
FOREIGN KEY (IDCARACT) REFERENCES dbo.CARACTERISTIQUE(IDCARACT);


ALTER TABLE dbo.CARACTERISTIQUE
ADD IDCAT int;

ALTER TABLE CARACTERISTIQUE
ADD CONSTRAINT FK_CARACTERISTIQUE_CATEGORIE
FOREIGN KEY (IDCAT) REFERENCES CATEGORIE(IDCAT);

ALTER TABLE dbo.PERSONNAGE
ADD IDGROUPE int;

ALTER TABLE PERSONNAGE
ADD CONSTRAINT FK_PERSONNAGE_GROUPE
FOREIGN KEY (IDGROUPE) REFERENCES GROUPE(IDGROUPE);


ALTER TABLE dbo.PERSONNAGE
ADD IDLIEU int;

ALTER TABLE PERSONNAGE
ADD CONSTRAINT FK_LIEU
FOREIGN KEY (IDLIEU) REFERENCES LIEU(IDLIEU);

ALTER TABLE dbo.PLACER
ADD IDTEL int;

ALTER TABLE PLACER
ADD CONSTRAINT FK_TELEPHONE
FOREIGN KEY (IDTEL) REFERENCES TELEPHONE(IDTEL);

ALTER TABLE dbo.PLACER
ADD IDLIEU int;

ALTER TABLE PLACER
ADD CONSTRAINT FK_LIEU
FOREIGN KEY (IDLIEU) REFERENCES LIEU(IDLIEU);


