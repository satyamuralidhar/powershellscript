#Checking the powershell version

function Get-PSVersion {
    $PSVersionTable.PSVersion
    
}
#Get-PSVersion

function Addtion {
    param(
        [int]$number1,
        [int]$number2
    )
    $num1 + $num2
}

Addtion -number1 10 -number2 20


