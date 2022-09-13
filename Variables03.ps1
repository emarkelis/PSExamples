$numberA = 10
$numberB = '10'
$result = $numberB + $numberA
Write-Output $result
$result.GetType()


$numberA = 10
$numberB = '10'
[int]$result = $numberB + $numberA
Write-Output $result
$result.GetType()