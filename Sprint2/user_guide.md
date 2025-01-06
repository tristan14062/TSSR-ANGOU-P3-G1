
## Utilisation du script de création d'utilisateurs

> Ce script est simple d'utilisation une fois les premiers paramètres mis en place. 


 - En premier lieu, il vous faut un fichier avec l'extension .csv et avoir connaissance du chemin dans lequel il se trouve.

 - Dans ce .csv (souvent sous forme de tableau à l'origine qui trouvera ses collones remplacer par des virgules ou points-virgules) il faut un intitulé à chaque collone (Nom, Prénom, fonction...) qui sera à reporter dans le script. Les accents peuvent provoquer de la casse, veillez à ne pas en avoir afin d'éviter tout problèmes. (cf screen ci-dessous)

> Ne pas oublier de préciser quels sont les séparateurs, ici nous avons des ";"

![script](https://i.imgur.com/LBAppA5.png)

- Lorsque toutes les informations sont bien renseignées. Il suffit de lancer le script avec la commande ``` ./script.ps1 ``` et de taper "1".

Tout les utilisateurs contenus dans le fichier seront créer avec les informations de celui-ci.

Seul le login ne sera pas établi. Il faut relancer le script avec l'option "2" pour les ajouter !

Vous pouvez vérifier en interface graphique la bonne création de vos utilisateurs et de leurs informations !


