$varA = "Hello"
$varB = 101
$result = $varA + $varB
Write-Output $result
$result.GetType()

#variables cleanup
Get-Variable varA,varB,result | Remove-Variable
$Error.Clear()