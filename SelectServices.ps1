[CmdletBinding()]
param (
    [PArameter(Mandatory=$false)]
    [ValidateSet('Running','Stopped','Other')]
    [string]$ServiceStatus
)   

if ($ServiceStatus -eq 'Other') {
    Get-Service | Where-Object {($_.Status -ne 'Running') -and ($_.Status -ne 'Stopped')}
} else {
    Get-Service | Where-Object Status -eq $ser
}

switch ($ServiceStatus) {
    'Running' { Get-Service | Where-Object Status -eq $ServiceStatus} 
    'Stopped' {  }
    'Other' { }
    Default {}
}
