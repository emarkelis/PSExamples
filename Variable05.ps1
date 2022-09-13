Remove-Variable $result
[int]$numberA = 10
[int]$numberB = '10'
$result = $numberB + $numberA
Write-Output $result
$result.GetType()