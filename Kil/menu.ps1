# Script Analyse Systeme32
# nom/prénom : koudimba/kil

Clear-Host # Permet de ne pas afficher ce qui précède

Write-Host '=== ANALYSE SYSTEME ===' -ForegroundColor Cyan

echo "" # Permet d'écrire (insérer) une ligne de vide pour espacer le contenu précédent du suivant

$env:USERNAME=Read-Host "Qui êtes-vous réellement?"

# 1. Date et heure de l'analyse
$date = Get-Date -Format 'dd/MM/yyyy HH:mm'
Write-Host 'Date du scan   : '$date -ForegroundColor Gray

# 2. Utilisateur connecte
Write-Host 'Utilisateur    : '$env:USERNAME -ForegroundColor Gray

# 3. Nom du PC
Write-Host 'Nom du PC      : '$env:COmputername -ForegroundColor Yellow

# 4. Systeme d'exploitation
$os = Get-CimInstance Win32_OperatingSystem
Write-Host "Systeme        : $($os.Caption)" -ForegroundColor Green

# 5. RAM libre (arrondie en nombre entier)
$ramLibre = [int]($os.FreePhysicalMemory / 1MB)
Write-Host "RAM disponible : $ramLibre Go" -ForegroundColor White

# 6. Espace libre sur le disque C:
$disque = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3 AND DeviceID='C:'"
$disqueLibre = [int]($disque.FreeSpace / 1GB)
Write-Host "Espace libre C : $disqueLibre Go" -ForegroundColor Blue

Write-Host ""
Write-Host "==========================" -ForegroundColor Cyan

Write-Host ""
Write-Host "==========================" -ForegroundColor Cyan
