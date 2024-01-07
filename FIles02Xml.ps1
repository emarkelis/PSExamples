$file = 'C:\Temp\XmlServices.xml'
Get-Service | 
   Select-Object DisplayName,Name,ServiceName,CanPauseAndContinue,CanShutdown,CanStop,ServiceType,StartType,Status |
   Export-Clixml -Path $file -Encoding UTF8 -Depth 4


   #Explain depth and stucture
