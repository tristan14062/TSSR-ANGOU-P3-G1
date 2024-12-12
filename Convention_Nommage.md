## Convention de nommage
<HR>

### Domaine :

**Domaine principal :**
  Nom de domaine Internet : BillU.fr
  Nom de domaine Local : BillU.lan
  FQDN : BillU.lan

**Sous-domaines :**
  Format Domaine Web : **web.BillU.fr**
  Format Domaine Local : **web.BillU.lan**

<HR>

### Organisation Units :
  
  Nombre de niveaux : 
              Niveau 1 : **Entreprise**  
                Noms : BillU
              Niveau 2 : **Catégories**  
                Noms : Employés ; Administrateurs ; Machines
              Niveau 3 : **Site(s)**  
                Noms : Paris
              Niveau 4 : **Groupes d'utilisateurs ; Groupes d'administrateurs ; Clients ; Serveurs**
                Noms : Utilisateurs ; Administrateurs ; Laptops clients ; Serveurs
                
<HR>

### Groupes de sécurité : 

Gère les autorisations (groupe amdin)

???????????????????????????????????????????????????????????????????????????????????????????
??  Convention de nommage par contenu                                                    ??
??    - Utilisateur : w.wilder                                                           ??
??    - Ordinateur : Type-Type_AD-Département-Numéro                                     ??
??    - Fonctionnalité : Attribution des droits par type de serveur (1 DC, 1 DHCP, 1 DNS)??
??                                                                                       ??
??  Type                                                                                 ??
??    - Local : LO                                                                       ??
??    - Global : GL                                                                      ??
???????????????????????????????????????????????????????????????????????????????????????????

<HR>

### Ordinateurs :

Format Serveur : **TYPE-OS-ROLE-NUMERO**  
Exemple : _SRV-WIN-DC-01_  (SRV = Serveur ; WIN = Windows ; DC = Domain Controler ; 01 = Numéro)  

Format Client : **TYPE-SITE-DEPARTEMENT-NUMERO**  
Exemple : _LAP-PAR-DEV-01_ (LAP = Laptop ; PAR = PARIS ; DEV = Développement ; 01 = Numéro)  

<HR>

### Utilisateurs :

Login :  
Format Utilisateur : **p.nom**  
Exemple : w.wilder  
Gestion des homonymes : 2 ou 3 lettres au lieu d'une pour le prénom  
Exemple : _wi.wilder_

Nom dans l'AD :  
Format : **prénom-nom**  
(L'appartenance au département est défini dans le groupe utilisateur)  
Exemple : _wilder-wilder_

<HR>

### GPO : 

Format : **TYPE-CIBLE-NOMGPO-PORTEE**
Exemple : SCR-USER-ACCESPANNEAUCONFIG-GLO

Type : Sécurité (SCR) / Bureau (BUR) / Système (SYS) / Réseau (RES) ...  
Cible : Utilisateurs (USR) / Ordinateur (LAP / DSK) / Groupe (GRP) / ...
NOMGPO : (à voir selon la GPO)
Portée : Global (GLO) / Local (LOC) / Domaine (DOM) / ...  

<HR>

### Groupe Utilisateur :

Groupes Utilisateurs : Par Site / Département
Format groupe : **GRP-SITE-DEPARTEMENT**
Exemple : _GRP-PAR-DEV_

Départements :

        Administrateur **ADMIN**

        Développpement : **DEV**
                - Directeur dév. log.
                - Responsable développement
                - Responsable ana. concept
                - Responsable recherche
                - Responsable test et qualité
                - Développeur
                - Testeur

        Communication et Relations publiques : **CORP**
                - Directeur Communication et Relations publiques
                - Responsable relation média
                - Responsable communication
                - Chargé en droit de la communication
                - Chargé relation presse
                - Chargé de communication
                - Community manager
                - Rédacteur
                - Monteur
                - Photographe
                - Designer graphique
                - Webmaster

        Juridique : **JUR**
                - Directeur juridique
                - Juristes

        Direction : **DIR**
                - Direction

        DSI : **DSI**
                - Directeur DSI
                - Hotliner
                - Technicien de maintenance
                - Technicien d'exploitation
                - Technicien réseaux
                - Technicien Système
                - Développeur
                - Intégrateur

        Finances et Comptabilité : **FC**
                - Directeur financier
                - Conseiller en fiscalité
                - Controleur de gestion
                - Analyste financier
                - Comptable

        QHSE : **QHSE**
                - Responsable QHSE
                - Technicien HSE
                - Auditeur
                - Animateur sécurité

        Service Commercial : **SCOMR**
                - Directeur commercial
                - Responsable achat
                - Gestionnaire ADV
                - Commercial
                - Acheteur
                - Agent

        Service Recrutement : **RH**
                - Responsable recrutement
                - Agent RH
