# Script Diagnostic systeme32
# nom/prénom : koudimba/kil

Clear-Host # Permet de ne pas afficher ce qui précède

Write-Host '=== DIAGNOSTIC SYSTEME ===' -ForegroundColor Cyan

Write-Host "" # Ecrire une ligne de vide d'espacer le contenu précédent avec le suivant

# 1. Date et heure du diagnostic
$date = Get-Date -Format 'dd/MM/yyyy HH:mm'
Write-Host 'Date du scan   : $date' -ForegroundColor Gray

# 2. Utilisateur connecte
Write-Host 'Utilisateur    : $env:USERNAME' -ForegroundColor Gray

# 3. Nom du PC
Write-Host 'Nom du PC      : $env:COMPUTERNAME' -ForegroundColor Yellow

# 4. Systeme d'exploitation
$os = Get-CimInstance Win32_OperatingSystem
Write-Host 'Systeme        : $($os.Caption)' -ForegroundColor Green

# 5. RAM libre (arrondie en nombre entier)
$ramLibre = [int]($os.FreePhysicalMemory / 1MB)
Write-Host "RAM disponible : $ramLibre Go" -ForegroundColor White

# 6. Espace libre sur le disque C:
$disque = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3 AND DeviceID='C:'"
$disqueLibre = [int]($disque.FreeSpace / 1GB)
Write-Host "Espace libre C : $disqueLibre Go" -ForegroundColor Blue

Write-Host ""
Write-Host "==========================" -ForegroundColor Cyan