$hello = "Hello"

$greeting =  [PSCustomObject]@{
    Question = "$hello who are you?"
    GreetUser = "$hello user $userResponse!"
    GreetExpert ="$hello expert $($This.UserResponse)!"
    UserResponse = Read-Host -Prompt $This.Question
}
#$greeting.UserResponse
Write-Output $greeting.GreetExpert
