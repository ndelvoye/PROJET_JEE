CREATE EVENT acceptAutoDemandes
    ON SCHEDULE EVERY 1 DAY
        STARTS '2019-11-28 15:40:00'
    DO
    -- Si une demande n'a pas été traité depuis 48h, on passe son état à VALIDER
    UPDATE Demande SET etat = 1, commentaire = 'Demande acceptée automatiquement' WHERE DATEDIFF( NOW(), dateCreation ) >= 2;