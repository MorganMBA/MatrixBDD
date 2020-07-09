USE Matrix;

Grant select, insert, update, delete on JOUEUR to SanonPlayer;
Grant select, insert, update, delete on SESSIONJEU to SanonPlayer;
Grant select, update on PERSONNAGE to SanonPlayer;
Grant select, update on ARME to SanonPlayer;

Grant select on JOUEUR to LeadDev;
Grant select on SESSIONJEU to LeadDev;
Grant select, insert, update, delete on PERSONNAGE to LeadDev;
Grant select, insert, update, delete on ENNEMI to LeadDev;
Grant select, insert, update, delete on LIEU to LeadDev;
Grant select, insert, update, delete on ARME to LeadDev;

Grant select, insert, update, delete on JOUEUR to TesterUI;
Grant select, insert, update, delete on SESSIONJEU to TesterUI;
Grant select, insert, update, delete on PERSONNAGE to TesterUI;
Grant select, insert, update, delete on ENNEMI to TesterUI;
Grant select, insert, update, delete on LIEU to TesterUI;
Grant select, insert, update, delete on ARME to TesterUI;


Grant select, delete on JOUEUR to Administrateur;
Grant select, delete on SESSIONJEU to Administrateur;
Grant select, update, delete on PERSONNAGE to Administrateur;
Grant select, update, delete on ENNEMI to Administrateur;
Grant select, update, delete on LIEU to Administrateur;
Grant select, update, delete on ARME to Administrateur;

EXECUTE AS USER = 'LeadDev';
SELECT * FROM JOUEUR

CREATE VIEW v TesterUI 
AS 
SELECT JOUEUR.NOM, JOUEUR.PSEUDO