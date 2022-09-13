$ErrorPreferenceOriginalValue = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"
$service = Get-Service BITS
$? 

$service = Get-Service AnotherService 
$?

#set the error action preference to its original value
$ErrorActionPreference = $ErrorPreferenceOriginalValue
#clear the errors
$Error.Clear()
