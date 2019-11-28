-- Employe
create table if not exists employe
(
    email           varchar(64) not null,
    password        varchar(64) not null,
    nom             varchar(32) not null,
    prenom          varchar(32) not null,
    adresse         varchar(64) not null,
    fonction        varchar(32) not null,
    equipe          varchar(32) not null,
    service         varchar(32) not null,
    dateRecrutement date        not null,
    constraint employe_email_uindex
        unique (email)
);

alter table employe
    add primary key (email);

-- Demande
create table if not exists demande
(
    id           bigint unsigned auto_increment,
    type         varchar(8)  not null,
    etat         smallint(6) not null,
    dateDebut    datetime    not null,
    dateFin      datetime    not null,
    dateCreation datetime    not null,
    emailEmploye varchar(64) not null,
    constraint demande_employe_uindex
        unique (emailEmploye),
    constraint demande_id_uindex
        unique (id),
    constraint id
        unique (id),
    constraint demande_employe_email_fk
        foreign key (emailEmploye) references employe (email)
);

alter table demande
    add primary key (id);

-- Compteur
create table if not exists compteur
(
    emailEmploye  varchar(64) not null,
    RTT           int         null,
    congesAnnuels int         null,
    enfantMalade  int         null,
    famille       int         null,
    constraint compteur_employe_uindex
        unique (emailEmploye),
    constraint compteur_employe_email_fk
        foreign key (emailEmploye) references employe (email)
);

alter table compteur
    add primary key (emailEmploye);