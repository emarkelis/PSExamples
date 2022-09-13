$service = Get-Service BITS

if ($service.Status -ne 'Running'){
    Write-Output "Service $($service.DisplayName) is not running"}
else {
    Write-Output "Service $($service.DisplayName) is running"
}