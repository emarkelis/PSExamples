$services = Get-Service
foreach ($service in $services){
    $service.Name
}