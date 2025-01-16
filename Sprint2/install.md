<div align="center"><H1> Install -  Sprint 2 </H1></div>

_______
# AD-DS / Rôles

## Installation du rôle AD DS

Dans le gestionnaire de serveur, cliquer sur **Ajouter des rôles et des fonctionnalités**.

![]()

Sélectionner **Installation basée sur un rôle ou une fonctionnalité**.

![]()

Choisir la bonne machine serveur, ici **SRV-WIN-DC-01**.

![]()

Cocher la case **Service AD DS**.

![]()

Valider en cliquant sur **Suivant**.

![]()

Cliquer sur **Ajouter des fonctionnaités**.

![]()

Puis sur **Installer**.

![]()

A la fin de l'installation, cliquer sur **Promouvoir ce serveur en controleur de domaine**.

![]()

Choisir **Ajouter une nouvelle forêt et indiquer un nom de domaine**.

![]()

Cocher **Serveur DNS** et renseigner le **mot de passe de restauration des services d'annuaire**.

![]()

Cliquer sur **Suivant**.

![]()

Laisser le **nom de domaine NetBIOS** par défaut (le personnaliser au besoin).

![]()

Encore une fois laisser les valeurs par défaut puis **Suivant**.

![]()

Un récapitulatif de l'installation apparaît, cliquer sur **Suivant**.

![]()

Cliquer sur **Installer**.

![]()

Cliquer sur **Fermer**.

![]()

L'**AD DS** apparaît bien dans le gestonnaire de serveur.

![]()

GUI
    ajout du rôle AD/DNS
    création de la forêt
    du domaine
    OU (1 exemple)
    Groupe (1 exemple)

## Redondance AD/DS avec un serveur Core

### Prérecquis

> Windows server (même version que le DC1) installé sur la machine avec une IP sur le même réseau que le domaine. Nous utiliserons ici un server Core (CLI)
> 
> Domaine déjà existant (cf Installation AD-DS au dessus). Ici BillU.lan


<HR>

### Paramétrage du serveur

L'adresse IP étant déjà configurée, il suffit de rentrer l'adresse du DNS (celle du DC1)

Il est possible de le faire via le Sconfig dans les paramètres réseau ou en ligne de commande (PowerShell)

```
Set-DnsClientServerAddress -InterfaceIndex 5 -ServerAddresses ("172.18.1.100")
```
Veillez à adapter avec l'index de votre interface réseau et l'adresse de votre DC. Ici c'est l'index d'interface 5 et l'ip de norte DC est *172.18.1.101*

Une fois le DNS renseigné. Ajouter le serveur au domaine. Il est possible de le faire via le Sconfig dans la premier rubrique *Domaine ou groupe de travail* ou en ligne de commande (PowerShell)
Il faut un utilisateur autorisé (ici nous utilisons le compte administrateur du domaine)

```
Add-Computer -DomainName BillU.lan -Credential Administrator@BillU.lan
```
Redémarrer le serveur afin d'appliquer les paramètres.

<HR>

### Ajouter les rôles AD-DS et DNS à la redondance

La redondance étant en CLI, nous allons passé par le DC1 (qui est en GUI) afin d'ajouter les rôles AD-DS et DNS à celui-ci.

Dans le Gestionnaire de serveur, clique droit sur *Tout les serveurs*  -> *Ajouter des serveurs*

![](https://i.imgur.com/fUI6oJw.png)

Renseignez le nom du serveur redondant (ici SRV-WIN-DC-02), sélectionnez le puis appuyer sur la flèche pour l'ajouter à la liste et validez.

![](https://i.imgur.com/7qUecQ4.png)

Une fois le serveur ajouté à la liste, nous allons ajouter les rôles AD-DS et DNS au serveur.

Clique droit sur le DC2 -> *Ajouter des rôles et fonctionnalités* 

Avancez dans les menus jusqu'à la sélection du serveur 

![](https://i.imgur.com/CROhKaN.png)

Sélectionez les rôles AD DS et DNS 

![](https://i.imgur.com/YQV9L44.png)

Suivant jusqu'à l'installation des rôles. Le serveur redémarrera une fois les rôles installés.

Nous pouvons constater que les rôles sont bien installés et pris en compte dans le *Tableau de bord*

![](https://i.imgur.com/eamA1VM.png)

__En cas de panne du DC1, le DC2 prendra le relai pour le DNS. Cependant il faut le renseignez sur les machines comme DNS alternatif dans les paramètres réseau de l'interface. Si il n'est pas renseignez, votre redondance ne sera pas prise en compte.__
