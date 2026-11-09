function Get-KingScript 
   { Write-Host "KING VOUS SALUE ET VOUS RASSURE : NE VOUS INQUIÉTEZ PAS, NOUS N'ACCÉDONS PAS À VOS INFORMATIONS PERSONNELLES. CE SCRIPT EST CONÇU AFIN DE VOUS AIDER À CONNAÎTRE LES SPÉCIFICITÉS DE VOTRE ORDINATEUR." -ForegroundColor Green
    Write-Host ""
    # 1. Nom PC
    $pcName = $env:COMPUTERNAME
    # 2. RAM (G)
    # 3. Date et Heure
    $currentDateTime = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $ramGB = [math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object Capacity -Sum).Sum / 1GB) 
    # 4. Disque C (space libres)
    $diskC = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
    $freeC = [math]::Round($diskC.FreeSpace / 1GB)
    # 5. Batterie (%)
    $bat = (Get-CimInstance Win32_Battery).EstimatedChargeRemaining
    if (-not $bat) { $bat = "N/A (PC Fixe)" } else { $bat = "$bat %" }
    # 6. Dernier réveil / veille
    $sleepEvent = Get-WinEvent -FilterHashtable @{LogName='System'; ProviderName='Microsoft-Windows-Kernel-Power'; Id=42} -MaxEvents 1 -ErrorAction SilentlyContinue 
if ($sleepEvent) { $lastSleep = $sleepEvent.TimeCreated } else { $lastSleep = "Non disponible" }
    # Affichage propre
    Write-Host "PC : $pcName"
    Write-Host "RAM : $ramGB Go"
    Write-Host "Disque C : $freeC Go libres"
    Write-Host "Batterie : $bat"
    Write-Host "Dernière mise en veille : $lastSleep" }

# Exécution
Get-KingScript