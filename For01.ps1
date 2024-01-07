$services = Get-Service
Write-Output "Total services : $services.Count"
for($idx = 0 ; $idx -lt $services.Count ; $idx+=10){
    $services[$idx]
}
