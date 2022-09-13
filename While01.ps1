$services = Get-Service | Where-Object Name -eq 'BITS'
Write-Output "First service status $($services[0].Status)"
$idx = 0
while($services[$idx].Status -eq 'Running'){
    $idx++
    $services[$idx].DisplayName
} 