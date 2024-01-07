$file = 'C:\Temp\CSVServices.csv'
Get-Service | 
   Select-Object DisplayName,Name,ServiceName,CanPauseAndContinue,CanShutdown,CanStop,ServiceType,StartType,Status |
   Export-Csv -Path $file -Encoding UTF8 -NoTypeInformation
