$hello = "Hello"
$question = "$hello who are you?"
#$userResponse = Read-Host -Prompt $question
$greeting =  [PSCustomObject]@{
    GreetUser = "$hello user $userResponse!"
    GreetExpert ="$hello expert $userResponse!"
}

Write-Output $greeting.GreetExpert
