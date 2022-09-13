$services = Get-Service
for($idx = 0 ; $idx -lt $services.Count ; $idx+=5){
    $services[$idx]
}
