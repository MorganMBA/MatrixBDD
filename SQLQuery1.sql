USE Matrix;

Select COUNT(JOUEUR.IDJOUEUR) from joueur inner join personnage ON JOUEUR.IDJOUEUR = PERSONNAGE.IDJOUEUR where joueur.idjoueur = 2;