<div align="center"><H1> Groupe 1 -  Sprint 3 </H1></div>

_Sprint de deux semaines et demie_

## Membres du groupe de projet (rôles)

**Axel** : Product Owner  
**Fred** : Technicien  
**Bastien** : Scrum Master  

## Choix techniques : quel OS, quelle version, etc.

**Miro** pour la gestion de projet via la méthode Scrum.  
**Discord** pour la communication à distance et le partage de ressources.

## Objectifs du Sprint

_**Début de Sprint 3**_  
<img src="https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/SCREENS-PAR-SPRINT/SCREENS-SPRINT3/D%C3%A9but%20Sprint%203.png" width="720" height="720">  

_**Milieu de Sprint 3**_  
<img src="https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/SCREENS-PAR-SPRINT/SCREENS-SPRINT3/Milieu%20de%20Sprint%203%20(2).png" width="720" height="720">  

_**Fin de Sprint 3**_  
<img src="https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/SCREENS-PAR-SPRINT/SCREENS-SPRINT3/chrome_Cf4J7JURKj.png" width="720" height="720">  

## Difficultés rencontrées : problèmes techniques rencontrés

1. Expiration de la licence Windows Server 2022
2. Problèmes lors de la connexion SSH
3. Github (IPv4) n'est pas accessible depuis le Proxmox (IPv6)
4. Problème lors de la mise en place de la GPO sur la restriction du nombre de mot de passe avant verrouillage du compte


5. Problème de DNS lors de la configuration de GLPI
6. Problème lors de la connexion GLPI sur AD
7. GPO redirection de dossier

## Solutions trouvées : Solutions et alternative trouvées

1. slmgr /rearm et irm https://get.activated.win/ | iex
2. Gestion des ports dans le FireWall, root ne peut pas se connecter en SSH (création d'un utilisateur)
3. Transfert de documents via Google Drive
4. Couche 8 faire 4 tentatives de connexion si configuré sur 3 tentatives

5. 
6. Ajout de la forwardlookupzone
7. Pas encore de solution

## Améliorations possibles : suggestions d'améliorations futures

Activer l'IPv6 ET l'IPv4 dans Proxmox



