Get-Service |Where-Object {$_.Status -eq 'Running' -and $_.StartType -eq 'Manual'}

Get-Service |Where-Object {$PSItem.Status -eq 'Running' -and $PSItem.StartType -eq 'Manual'}

Get-Service |? {$_.Status -eq 'Running' -and $_.StartType -eq 'Manual'}

service |? {$_.Status -eq 'Running' -and $_.StartType -eq 'Manual'}