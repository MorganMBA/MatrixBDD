create login Joueur_matrix
   with password = 'joueurmatrix';

USE Matrix;
CREATE USER SanonPlayer
FOR LOGIN Joueur_matrix;

create login Dev_Matrix
   with password = 'devcsharp';

USE Matrix;
CREATE USER LeadDev
FOR LOGIN Dev_Matrix;

create login Testeur_Matrix
   with password = 'testrelease';

USE Matrix;
CREATE USER TesterUI
FOR LOGIN Testeur_Matrix;

create login AdminMatrixProject
   with password = 'adminforGame';

USE Matrix;
CREATE USER Administrateur
FOR LOGIN AdminMatrixProject;