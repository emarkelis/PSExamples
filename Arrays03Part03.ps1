[System.ServiceProcess.ServiceController[]] $services = @()

$services += Get-Service BITS
$services += Get-Process Notepad