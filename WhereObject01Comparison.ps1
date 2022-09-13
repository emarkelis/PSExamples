Get-Service | 
    Where-Object Status -eq 'Running'

service |
    ? Status -eq 'Running'

