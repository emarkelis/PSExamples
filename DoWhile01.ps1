$services = Get-Service | Where-Object Name -eq 'BITS'
Write-Output "First service status $($services[0].Status)"
$idx = 0
do {
    Write-Output "Execution cycle: $($idx+1)"
    $services[$idx].DisplayName
    $idx++
} while($services[$idx].Status -eq 'Running')