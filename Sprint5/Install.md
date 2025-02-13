<div align="center"><H1> Install -  Sprint 5 </H1></div>

## 1) DOSSIERS PARTAGES - Mettre en place des dossiers réseaux pour les utilisateurs

### A) Stockage des données sur un volume spécifique

### B) Sécurité de partage des dossiers par groupe AD

### C) Mappage des lecteurs sur les clients (au choix) :

#### a) GPO

#### b) Script PowerShell/batch

#### c) Profil utilisateur AD

### D) Chaque utilisateur a accès à :

#### a) Un dossier individuel , avec une lettre de mappage réseau I, accessible uniquement par cet utilisateur

#### b) Un dossier de service, avec une lettre de mappage réseau J, accessible par tous les utilisateurs d'un même service.

#### c) Un dossier de département, avec une lettre de mappage K, accessible par tous les utilisateurs d'un même département.

## 2) STOCKAGE AVANCÉ - Mettre en place du RAID 1 sur un serveur

## 2 bis) STOCKAGE AVANCÉ - Mettre en place LVM sur un serveur Debian

## 3) SAUVEGARDE - Mettre en place une sauvegarde de données

1. **Faire le bon choix des données à sauvegarder (ex.: dossiers partagés des utilisateurs)**

2. **Emplacement de la sauvegarde sur un disque différents de celui des données d'origine**

3. **Mettre en place une planification de sauvegarde (script, AT, GPO, logiciel, etc.)**

## 4) MOT DE PASSE ADMINISTRATEUR LOCAL - Mise en place de LAPS

1. **Console de gestion sur un AD (GUI)**

2. **Installation sur au moins 1 client (GPO ou script PS)**

## 5) GESTION DES OBJETS AD - Déplacement automatique des ordinateurs dans les bonnes OU

1. **Suivant le nom d'une machine et/ou la valeur d'un attribut AD**

2. **Automatisation par script PS exécuté par une tâche AT**

## 6) SECURITE D'ACCES - Restriction d'utilisation

1. **Pour les utilisateurs standard : connexion autorisée de 7h30 à 20h, du lundi au samedi sur les clients (bloquée le reste du temps)**

2. **Pour les administrateurs : bypass**

3. **Gestion des exceptions : prévoir un groupe bypass**
