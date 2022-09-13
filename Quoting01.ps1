$varA = "Hello"
$varB = "World!"
Write-Output "$varA $varB" 

Write-Output "$varA value is $varA"

#Use a backtick ` in order to prevent variable evaluation
Write-Output "`$varA value is $varA"

Write-Output "${varA}: $varA"
