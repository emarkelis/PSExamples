[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidateSet('Running','Stopped')]
    [string]$Status
)
Get-Service | 
    Where-Object Status -eq $Status