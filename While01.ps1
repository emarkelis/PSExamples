$services = Get-Service | Where-Object Name -eq 'BITS'
$idx = 0
while($services[$idx].Status -eq 'Running'){
    $services[$idx].DisplayName
    $idx++
} 