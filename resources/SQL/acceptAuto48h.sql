CREATE EVENT acceptAutoDemandes
    ON SCHEDULE EVERY 1 DAY
        STARTS '2019-12-1 00:00:00'
    DO
    -- Si une demande n'a pas été traité depuis 48h, on passe son état à VALIDER
    UPDATE demande SET
                       etat = 1, commentaire = 'Demande acceptée automatiquement' WHERE DATEDIFF( NOW(), dateCreation ) >= 2;