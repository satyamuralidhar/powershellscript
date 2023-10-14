$filepath="D:\python git\powershellscript\filemanagement\getservices\test.csv"
$Data=Get-Content -Path $filepath
$Data
$Data[1]
Write-Host "----Stage1----"

$UserName=$Data[0]

switch ($UserName) {
    "Murali" { 
        Write-Output "This is Murali"
     }
     "Mohan" { 
        Write-Output "This is Mohan"
     }
     "Pavan" { 
        Write-Output "This is Pavan"
     }
     "Satya" { 
        Write-Output "This is Satya"
     }
    Default {
        Write-Output "No User Found"
    }
}

Write-Host "----Stage2----"

$Data

$Data.Count

switch ($Data.Count) {
    {0..2 -contains $Data.Count} {
        Write-Output "between 0 and 2"
        break
    }
    {2..4 -contains $Data.Count} {
        Write-Output "between 2 and 4"
        break
    }
    Default {
        Write-Output "More Than 4"
    }
}

