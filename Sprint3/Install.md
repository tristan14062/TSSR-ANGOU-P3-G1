#### Rejoindre l'AD-DS avec le serveur Debian

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
