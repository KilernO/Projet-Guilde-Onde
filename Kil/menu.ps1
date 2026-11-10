# Script Analyse Systeme32
# nom/prénom : koudimba/kil

Clear-Host # Permet de ne pas afficher ce qui précède

Write-Host '=== ANALYSE SYSTEME ===' -ForegroundColor Magenta

echo "" # Ecrire une ligne de vide d'espacer le contenu précédent avec le suivant

$env:USERNAME=Read-Host "Qui êtes-vous réellement?"

# 1. Date et heure de l'analyse
$date = Get-Date -Format 'dd/MM/yyyy HH:mm'
Write-Host 'Scan Date       : '$date -ForegroundColor Gray

# 2. Utilisateur connecte
Write-Host 'User            : '$env:USERNAME -ForegroundColor Gray

# 3. Nom du PC
Write-Host 'PC Name         : '$env:COmputername -ForegroundColor Yellow

# 4. Systeme d'exploitation
$os = Get-CimInstance Win32_OperatingSystem
Write-Host "Systeme         : $($os.Caption)" -ForegroundColor Green

# 5. RAM libre (arrondie en nombre entier)
$ramLibre = [int]($os.FreePhysicalMemory / 1MB)
Write-Host "available RAM   : $ramLibre Go" -ForegroundColor White

# 6. Espace libre sur le disque C:
$disque = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3 AND DeviceID='C:'"
$disqueLibre = [int]($disque.FreeSpace / 1GB)
Write-Host "Free Storage (C): $disqueLibre Go" -ForegroundColor Blue

Write-Host ""
Write-Host "==========================" -ForegroundColor Magenta

Write-Host ""
Write-Host "==========================" -ForegroundColor Cyan
