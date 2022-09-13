Get-Service |
    ForEach-Object {
        $_.Name
    }


service | % Name