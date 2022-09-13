[int32[]]$integers = 1,5,7,9
[string[]]$strings = "One","Two","Three"
[System.ServiceProcess.ServiceController[]] $services = Get-Service

[int32[]]$integers = 1,5,7,9
$integers
$integers += 8
$integers
cls
$integers.Sort
$integers

("one", "two", "three").ForEach("ToUpper")

($integers).ForEach({$_ -gt 5})