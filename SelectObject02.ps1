#Example 01
Get-Service |
    Where-Object {$_.CanStop -eq $true -or $_.CanShutdown -eq $true} |
    Select-Object Name,@{Name='DependentServices';Expression={$_.DependentServices.Count}}

#Example 02
Get-Service |
    Where-Object {($_.CanStop -eq $true -or $_.CanShutdown -eq $true) -and $_.DependentServices.Count -gt 0} |
    Select-Object Name,@{Name='DependentServices';Expression={$_.DependentServices.Count}}
