$varA = "Hello"
$varB = "World!"
$result = $varA + $varB
Write-Output $result
$result.GetType()

#variables cleanup
Get-Variable varA,varB,result | Remove-Variable
$Error.Clear()