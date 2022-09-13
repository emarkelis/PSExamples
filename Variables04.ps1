$numberA = 10
$numberB = '10'
$result = [int]($numberB + $numberA)
Write-Output $result
$result.GetType()