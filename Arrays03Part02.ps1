[System.ComponentModel.Component[]]$componentsArray = @()

$componentsArray += Get-Process Notepad
$componentsArray += Get-Service BITS

$componentsArray | Select-Object Name,Status,Product

#The next line returns all properties with their values
#Get-Process Notepad | Format-List *
#The next line returns all properties with their values
#Get-Service BITS | Format-List *

