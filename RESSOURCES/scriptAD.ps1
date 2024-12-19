
Clear-Host

$Nom = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty Nom
$Prenom = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "Prenom"
$societe = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "societe"
$departement = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "departement"
$Fonction = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "Fonction" 
$managerp = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "manager-prenom"
$managern = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "manager-nom"
$portable = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "Telephone portable"
$fixe = Import-Csv -Path "C:\Salarie_billu.csv" -Delimiter ";" -Encoding UTF8 | Select-Object -ExpandProperty "Telephone Fixe"
Write-Host
"
1 : Création des utilisateurs
"


$choix = Read-Host "Faites voitre choix"
switch ($choix)
{
1{
for ( $i = 0; $i -lt $Nom.Count; $i++ ) {
$Nom_user = $Nom[$i]
$managerpr = $managerp[$i]
$managerno = $managern[$i]
$manager = "$managerpr.$managerno"
$entreprise = $societe[$i]
$poste = $fonction[$i]
$telp = $portable[$i]
$telf = $fixe[$i]
$dep = $departement[$i]

Write-host "$Nom_user ; $manager ; $entreprise" }


}
}
