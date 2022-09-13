Get-Service |
    Where-Object {($_.CanStop -eq $true -or $_.CanShutdown -eq $true) -and $_.DependentServices.Count -gt 0} |
    ForEach-Object {
        Write-Host "$($_.DisplayName)" -ForegroundColor Green
        Write-Host "Dependent services : $($_.DependentServices.Count)" -ForegroundColor Cyan
        $_.DependentServices| 
            Select-Object -ExpandProperty DisplayName
    }