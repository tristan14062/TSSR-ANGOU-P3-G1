## Convention de nommage
<HR>

### Domaine :

**Domaine principal :**  
  Nom de domaine Internet : BillU.com  
  Nom de domaine Local : BillU.lan  
  FQDN : BillU.lan  

**Sous-domaines :**  
  Format Domaine Web : **web.BillU.com**  
  Format Domaine Local : **web.BillU.lan**  

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

### Groupe Utilisateurs ( Groupes de sécurité et de diffusion ): 

Groupes de sécurités par  Site / Département / Service 
Format groupe : **GRP-SITE-DEPARTEMENT-SERVICE**  
Exemple : _GRP-PAR-DEV-TEST_  

Goupes de sécurité par  Site / Département / Fonction

Format groupe : **GRP-SITE-DEPARTEMENT-FONCTION**  
Exemple : _GRP-PAR-DSI-HOT_ 


Départements :

- Administrateurs **ADMIN**

    - Administrateur Controleur de domaine **ADMDC**
    - Administrateur DHCP **ADMDHCP**    
  

- Département Développpement logiciel : **DEV**

Services
    - Developpement : **DVL**
    - Analyse et conception : **ANC**
    - Recherche et prototype : **REP**
    - Test et qualité : **TEQ**

    Fonctions
    - Directeur dév. log. **DDL**
    - Responsable développement **RD**
    - Responsable ana. concept **RAC**
    - Responsable recherche **RR**
    - Responsable test et qualité **RTQ**
    - Développeur **DEV**
    - Testeur **TST**

- Département Communication et Relations publiques : **CORP**
  
    Fonctions
    - Directeur Communication et Relations publiques **DCRP**
    - Responsable relation média **RRM**
    - Responsable communication **RC**
    - Chargé en droit de la communication **CDCO**
    - Chargé relation presse **CRP**
    - Chargé de communication **CC**
    - Community manager **COMA** (COMA / COMAINT)
    - Rédacteur **REDAC**
    - Monteur **MONT**
    - Photographe **PHOTO**
    - Designer graphique  **DEGRA**
    - Webmaster **WEBMAS**
      
    Services
    - Communication interne : **COI**
    - Gestion des marques : **GEM**
    - Relation médias : **REM**

- Département Juridique : **JUR**
  
    Fonctions
    - Directeur juridique **DIRJU**
    - Juristes **JURI** (JURIDRS / JURIPRI)
    - Avocat **AVOC**
      
    Services
    - Droits des sociétés : **DRS**
    - Propriété intellectuelle : **PRI**
    - Protection des données et conformité : **PDC**

- Département Direction : **DIR**
  
    Fonctions
    - CEO **CEO**
    - Assistant de direction **ASDI**
    - Directeur Adjoint **DIAD**

- Département DSI : **DSI**
  
    Fonctions
    - Directeur DSI **DIDSI**
    - Hotliner **HOT**
    - Technicien de maintenance **TEMA**
    - Technicien d'exploitation **TEEX**
    - Technicien réseaux **TERE**
    - Technicien Système **TESY**
    - Technicien Sytèmes et Réseaux **TESYRE**DSI-IDANFIN
    -  Développeur **DVL**
    - Intégrateur **INT**
      
    Services
    - Developpement et intégration **DEVIN**
    - Support **SUP**
    - Exploitation **EXP**
    - Administration systèmes et réseaux **ASR**
    - Developpement et intégrationn **DEVI**

- Département Finances et Comptabilité : **FIN**
  
     Fonctions
     - Directeur financier **DIRFIN**
     - Conseiller en fiscalité **CONFI**
     - Controleur de gestion **CONGE**
     - Analyste financier **ANFIN**
     - Comptable **COMP**
       
     Services
     - Finance **FINA**
     - Service comptabilité **SERCOM**
     - Fiscalité **FISCA**
  
- Département QHSE : **QHSE**

     Fonctions
     - Responsable QHSE **REQHSE**
     - Technicien HSE **TECHSE**
     - Auditeur **AUDI**
     - Animateur sécurité **ANSEC**
       
     Services
     - Certification **CERTI**
     - Contôle qualité **CONQU**
     - Gestion environnementale **GEENV**

- Département Service Commercial : **SCOMR**
  
    Fonctions
    - Directeur commercial **DIRCOM**
    - Responsable achat **REACH**
    - Gestionnaire ADV **GADV**
    - Responsable ADV **RADV**
    - Commercial **COME**
    - Acheteur **AC**
    - Agent **AGE**
      
    Services
    - ADV **ADV**
    - B2B **B2B**
    - Achat **ACH**
    - Client **CLI**


- Département Service Recrutement : **RH**
  
    Fonction
  - Responsable recrutement **RERE**
  - Agent RH **ARH**

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
![Schema_AD_avec_OU.png](https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/RESSOURCES/Schema_AD_avec_OU.png)
