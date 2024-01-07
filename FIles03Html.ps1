$file = 'C:\Temp\HtmlServices.html'
Get-Service | 
   Select-Object DisplayName,Name,ServiceName,CanPauseAndContinue,CanShutdown,CanStop,ServiceType,StartType,Status |
   ConvertTo-Html -Head "Services" -Title "Services list" |
   Out-File -FilePath $file -Encoding utf8


   
