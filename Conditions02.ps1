$service = Get-Service BITS

if (-not ($service.Status -eq 'Running')){
    Write-Output "Service $($service.DisplayName) is not running"}
else {
    Write-Output "Service $($service.DisplayName) is running"
}