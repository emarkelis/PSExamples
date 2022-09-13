$varA = 101
$varB = "world!"
$result = $varA + $varB
Write-Output $result
$result.GetType()

#variables cleanup
Get-Variable varA,varB,result | Remove-Variable
$Error.Clear()