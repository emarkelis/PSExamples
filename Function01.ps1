
function  AskUser ($Question='Who are you?') {
    return (Read-Host -Prompt $Question)
}

function CreateGreetingObject {
  [CmdletBinding()]
  param(
    [parameter(ValueFromPipeline,Mandatory=$true,Position=0)]
    [string]$UserResponse
  )
    return [PSCustomObject]@{
        User = "Hello user $UserResponse"
        Expert = "Hello expert $UserResponse"
    }
}


function GreetValidateSet {
    param (
        [ValidateSet('User','Expert')]
        [string]$UserType = 'Expert'
    )

    $greet = AskUser | CreateGreetingObject
    switch ($USerType) {
        'User' { $greet.User }
        'Expert' { $greet.Expert }
        Default {}
    } 
    
}

function GreetSwitch {
    param (
        [switch]$Expert
    )
    $greet = AskUser | CreateGreetingObject

    if ($Expert.IsPresent){
        $greet.Expert`
    } else {
        $greet.User
    }
    
}