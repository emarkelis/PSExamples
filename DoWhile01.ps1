$services = Get-Service | Where-Object Name -eq 'BITS'
$idx = 0
do {
    $services[$idx].DisplayName
    $idx++
} while($services[$idx].Status -eq 'Running')