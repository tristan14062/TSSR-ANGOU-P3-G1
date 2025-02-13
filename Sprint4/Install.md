<div align="center"><H1> Install -  Sprint 4 </H1></div>

## 1) SECURITE - Gestion d'un firewall pfSense

![pfsense](https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/Sprint4/images/logo_pfsense.png)

### A) Installation et paramètres réseaux

  1. Installation

     Tout d'abord, il faut télécharger l'ISO sur le site de netgate.com
     Ensuite, televerser l'image sur l'infra PROXMOX
     Lancer l'installation
     Seul le l'adresse IP de la machine, le login et le mot de passe sont important à bien configurer pendant l'installation, afin d'avoir accès à l'interface web de pfsense depuis un client (Windows ou Linux) sur le réseau. Par la suite, tout peut être modifié dans l'interface.

     Une fois l'installation terminée, il faut se connecter depuis un client avec l'adresse https://172.18.255.254

    
![pfsense](https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/Sprint4/images/login_pfsense.png)
    

    
  3. Configuration réseaux  

L'utilisation des adresses suivantes sont imposées :

![pfsense](https://github.com/WildCodeSchool/TSSR-ANGOU-P3-G1/blob/main/Sprint4/images/adresses_IP.png)


### B) Mise en place de règles de pare-feu WAN, LAN, DMZ

### C) Utiliser les principes de gestion des règles suivantes

#### a) Deny all ou Allow all

#### b) Least privilege

#### c) Order of rules

## 2) SECURITE - Gestion de la télémétrie sur les clients Windows 10/11

1. **Utilisation de script(s) PowerShell**

2. **Script(s) exécuté(s) depuis un serveur Windows ou directement sur les clients**

3. **Exécution par tâches AT**

## 2 bis) SECURITE - Gestion de la télémétrie sur un client Windows 10/11

### Utilisation de GPO (Utilisateur/Ordinateur)

## 3) RESEAU - Amélioration de l'infrastructure Proxmox avec des routeurs

1. **Utilisation de template de routeurs Vyos**

2. **Lien avec le schéma réseau initial**

## 3 bis) RESEAU - Amélioration de l'infrastructure Proxmox avec des vlans

1. **Simulation de switch par utilisation de tag de vlan**

2. **Utilisation de sous-réseau de carte bridge**

3. **Lien avec le schéma réseau initial**
