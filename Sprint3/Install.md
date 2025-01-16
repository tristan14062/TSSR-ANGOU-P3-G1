<div align="center"><H1> Install -  Sprint 3 </H1></div>

## 1) Rejoindre l'AD-DS avec le serveur Debian

### Étape 1 : Préparer le serveur Debian
1. **Mettre à jour le système** :
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```

2. **Installer les paquets nécessaires** :
   Tu auras besoin de `realmd`, `samba`, `samba-common`, `samba-common-bin`, et `sssd`. Installe-les avec la commande suivante :
   ```bash
   sudo apt install realmd samba samba-common-bin sssd
   ```

### Étape 2 : Configurer le DNS
**Ajouter l'adresse IP du contrôleur de domaine** :
   Modifie le fichier `/etc/resolv.conf` pour ajouter l'IP de ton contrôleur de domaine comme serveur DNS principal :
   ```bash
   sudo nano /etc/resolv.conf
   ```
   Ajoute la ligne suivante :
   ```
   nameserver <IP_DU_CONTROLEUR_DE_DOMAINE>
   ```

### Étape 3 : Découvrir le domaine
**Utiliser `realm` pour découvrir le domaine** :
   Exécute la commande suivante pour vérifier que le domaine est accessible :
   ```bash
   realm discover <NOM_DU_DOMAINE>
   ```

### Étape 4 : Joindre le domaine
**Joindre le domaine** :
   Utilise la commande suivante pour joindre le domaine. Remplace `<NOM_DU_DOMAINE>` par le nom de ton domaine :
   ```bash
   sudo realm join <NOM_DU_DOMAINE> -U <UTILISATEUR_ADMIN>
   ```
   Tu devras entrer le mot de passe de l'utilisateur administrateur du domaine.

### Étape 5 : Vérifier l'intégration
**Vérifier que le serveur est bien joint au domaine** :
   Utilise la commande suivante :
   ```bash
   realm list
   ```

## 2) Les GPO

### Les GPO de sécurité

#### 1 : Blocage complet du panneau de config

#### 2 : Sécurité PowerShell + CMD

#### 3 : Restriction des périphériques amovibles

#### 4 : Ecran de veille avec MDP en sortie

#### 5 : Verrouillage de compte (Après un nombre d'erreurs de mot de passe définie)

#### 6 : Blocage de l'accès du gestionnaire de tâche

### Les GPO Standards

#### 1 : Fond d'écran

#### 2 : Mappage de lecteur

#### 3 : Redirection de dossier

#### 4 : Déploiement de logiciels

#### 5 : Gestion de l'alimentation



## 3) GLPI

![GLPI](https://github.com/TSSR-ANGOU-P3-G1/blob/main/images/logo_GLPI.png)

### A) Installation et configuration de GLPI version 10.0.17 sur un serveur Linux distribution Debian 12

   #### a) Prérequis. GLPI a besoin d'un serveur Web, de PHP et d'une base de données pour fonctionner.Il y aura également plusieurs extensions PHP à installer.

Choix des solutions pour répondre aux prérquis :

   => Serveur web : Apache2
   
   => Version de PHP : 8.2
   
   => Base de données : MariaDB
   

   #### b) Préparation du serveur avant installation de GLPI

  Mettre à jour et à niveau le serveur :

  ```
   sudo apt-get update && sudo apt-get upgrade
   ```

  Installation du socle LAMP :

  ```
   sudo apt-get install apache2 php mariadb-server
   ```
 
  installation des extensions :

 ```
   sudo apt-get install php-xml php-common php-json php-mysql php-mbstring php-curl php-gd php-intl php-zip php-bz2 php-imap php-apcu
   ```
  
  
  Installation de l'extensions LDAP pour utiliser GLPI avec un Active Directory

```
   sudo apt-get install php-ldap
   ```
  
  

  Sécurisation de la base de données ( Changement de mot de passe root,suppression des utilisateurs anonymes, désactivation de l'accès root à
  distance,etc...) :


```
   sudo mysql_secure_installation
   ```
  
  

  ![GLPI](https://github.com/TSSR-ANGOU-P3-G1/blob/main/images/Secure_BD.png)

  Création dela base de données dédiée pour GLPI :
  Connexion à votre instance MariaDB, Saisir le mot de passe Root défini à l'étape précédente


```
   sudo mysql -u root -p
   ```
  
  

  

  Puis, exécuter les requêtes SQL ci-dessous pour créer la base de données "db23_glpi" ainsi que l'utilisateur "glpi_adm" avec un mot de passe

 ![GLPI](https://github.com/TSSR-ANGOU-P3-G1/blob/main/images/Create_BD.png)

  Liste des commandes pour un eventuel copier/coller :
  
  CREATE DATABASE db23_glpi;
  
  GRANT ALL PRIVILEGES ON db23_glpi.* TO glpi_adm@localhost IDENTIFIED BY "MotDePasseRobuste";
  
  FLUSH PRIVILEGES;
  
  EXIT





  
  
   #### c) Installation de GLPI

   Télécharger GLPI depuis le dépot GitHub et préparer l'installation :


```
     wget https://github.com/glpi-project/glpi/releases/download/10.0.10/glpi-10.0.10.tgz
   ```

  Mettre le fichier .tgz téléchargé dans le reprtoire /tmp puis le décompresser dans le repertoire /var/www :

  
```
    sudo tar -xzvf glpi-10.0.10.tgz -C /var/www/
   ```

   Définir l'utilisateur "www-data" correspondant à Apache2, en tant que propriétaire sur les fichiers GLPI

```
sudo chown www-data /var/www/glpi/ -R
   ```









### B) Déploiement de l'agent GLPI sur les clients (Windows et Linux)

### C) Lien entre l'AD du domaine BillU.lan et GLPI





### D) Les Tutos et ressources internet sur GLPI

https://forum.glpi-project.org/viewtopic.php?id=163985

https://github.com/glpi-project/glpi/releases/

https://github.com/glpi-project/glpi-agent/releases/tag/1.7

https://services.glpi-network.com

https://openclassrooms.com/fr/courses/1730516-gerez-votre-parc-informatique-avec-glpi/5994176-installez-le-plugin-et-l-agent-fusioninventory

https://www.it-connect.fr/installation-pas-a-pas-de-glpi-10-sur-debian-12/

https://www.it-connect.fr/glpi-en-https-comment-ajouter-un-certificat-ssl/

https://www.it-connect.fr/tuto-installer-configurer-gpo-agent-glpi-windows/

https://www.it-connect.fr/tuto-glpi-configurer-authentification-active-directory/

https://www.it-connect.fr/tuto-glpi-configurer-authentification-active-directory/

https://colinfo.fr/configuration-et-installation-de-lagent-glpi-sous-windows-et-linux/

https://faq.teclib.com/02_FAQ/Agent/#what-are-the-functionalities-of-the-toolbox

https://forum.glpi-project.org/viewtopic.php?id=290271

debian règle dans mon firewall bloque l'accès au serveur apache

https://tutos-info.fr/wp-content/uploads/2023/02/TUTORIEL-CONFIGURER-LDAP-SUR-GLPI-10.pdf

https://neptunet.fr/glpi-ad/

https://forum.glpi-project.org/viewtopic.php?id=249247

https://openclassrooms.com/fr/courses/1730486-gerez-vos-incidents-avec-le-referentiel-itil-sur-glpi/6544666-creez-et-qualifiez-un-ticket-d-incident



   
