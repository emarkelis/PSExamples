#clear the errors
$Error.Clear()
#Set the error preference
$ErrorPreferenceOriginalValue = $ErrorActionPreference
$ErrorActionPreference = "SilentlyContinue"

$service = Get-Service AnotherService
if(-not $?){ 
    Write-Output "$($Error[-1].Exception.Message)"
}


#set the error action preference to its original value
$ErrorActionPreference = $ErrorPreferenceOriginalValue
