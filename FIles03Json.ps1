$file = 'C:\Temp\JsonServices.json'
Get-Service | 
   Select-Object DisplayName,Name,ServiceName,CanPauseAndContinue,CanShutdown,CanStop,ServiceType,StartType,Status |
   ConvertTo-Json |
   Out-File -FilePath $file

   
