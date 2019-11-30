# Gestion des congés - Projet ENSSAT IMR2 2019

## Pré-requis
* Mettre en place un serveur Tomcat 9
* Mettre en place un serveur MySQL 8
* `git clone https://github.com/ndelvoye/PROJET_JEE.git`

## Mettre en place notre application
### Modification du mot de passe
* `mysql -u root -p`
* \> `SET PASSWORD FOR root@localhost=PASSWORD(root);`
* \> `FLUSH PRIVILEGES;`

### Création de la base + peuplement
* `mysql -u root -p` 
* \> `CREATE DATABASE gestionconges;`
* `mysql -u root -p gestionconges < [repertoire_SQL]/createTables.sql`
* `mysql -u root -p gestionconges < [repertoire_SQL]/insertValues.sql`
* `mysql -u root -p gestionconges < [repertoire_SQL]/acceptAutoDemandes.sql`

Un problème rencontré lors de l’export du .war sur l’environnement Unix nous oblige à modifier
le nom des tables (dans un souci de respect de la casse) :
* \> `RENAME TABLE employe TO Employe;`
* \> `RENAME TABLE compteur TO Compteur;`
* \> `RENAME TABLE demande TO Demande;`

### Déploiement du war 
Ensuite, il suffit d’installer le .war sur un serveur Apache Tomcat :
1. Démarrer Tomcat : `sudo sh /opt/tomcat/latest/bin/startup.sh &`
2. Se rendre sur l’interface Web Tomcat : http://localhost:8080/manager (admin/admin)
3. Uploader et déployer le war “WAR file to deploy”

### Lien de l'application
http://localhost:8080/gestionConges

### Identifiants DRH
* email : `mdadie@jee.fr`
* password : `mdadie`

## Frameworks utilisés
* [Hibernate](https://hibernate.org/orm/documentation/5.4/) - Framework utilisé pour gérer la persistance des objets Java <-> BDD

## Auteurs
* [Marie-Danielle Dadie](https://github.com/madadadie) 
* [Nicolhas Delvoye](https://github.com/ndelvoye)
* [Maeg Morin--Cozannet](https://github.com/mmorinco)
* [Sovanny Tran](https://github.com/svntr)
