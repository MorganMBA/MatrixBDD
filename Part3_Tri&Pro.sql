Create Procedure spCreate_Session_jeu
	@starttime DateTime, @endtime DateTime

	AS
		DECLARE @start DateTime, @end DateTime, 
			@startHour DateTime, @endHour DateTime;

		Select @start = SESSIONJEU.STARTIME FROM SESSIONJEU
			WHERE STARTIME = @starttime;

		Select @end = SESSIONJEU.ENDTIME FROM SESSIONJEU
			WHERE ENDTIME = @endtime;

		if @end < @start
			PRINT 'échec de création de jeu';
		else
			if @end = @start

			Select @startHour = FORMAT(CAST(SESSIONJEU.STARTIME AS datetime2), N'HH:mm')
			FROM SESSIONJEU
			WHERE STARTIME = @starttime;

			Select @endHour = FORMAT(CAST(SESSIONJEU.ENDTIME AS datetime2), N'HH:mm')
			FROM SESSIONJEU
			WHERE ENDTIME = @endtime;

				if @endHour < @startHour
					PRINT 'échec de création de jeu';
				else
					INSERT INTO SESSIONJEU VALUES (@starttime, @endtime);

		if @start < @end
			INSERT INTO SESSIONJEU VALUES (@starttime, @endtime);
	Go

Create Procedure spCreate_partie
    @startime DateTime, @endtime Datetime

    AS
        DECLARE @start DateTime, @end DateTime;

        Select @start = FORMAT(CAST(PARTIE.STARTIME AS datetime2), N'HH:mm')
        FROM PARTIE
        WHERE STARTIME = @startime;

        Select @end = FORMAT(CAST(PARTIE.ENDTIME AS datetime2), N'HH:mm')
        FROM PARTIE
        WHERE ENDTIME = @endtime;

        if @end < @start
            PRINT 'échec de création de la partie';
        else
            INSERT INTO PARTIE(STARTIME, ENDTIME) VALUES (@startime, @endtime);

    Go

Create Procedure spJoeur_Role_Personnage
	@nomJoueur VARCHAR(50), @pseudo VARCHAR(50)

AS
	DECLARE	@roleCount numeric(1);
	SELECT @roleCount = 
