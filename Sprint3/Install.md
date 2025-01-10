<div align="center"><H1> Install -  Sprint 3 </H1></div>

## Rejoindre l'AD-DS avec le serveur Debian

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

## Les GPO

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
