Get-Service
Write-Host "---Stage1----"
Get-Service -Name Spooler

Write-Host "---Stage2----"
$ServiceName="Spooler"
Get-Service -Name $ServiceName

Write-Host "---Stop and Start----"
Stop-Service -Name $ServiceName
Start-Service -Name $ServiceName
#"or"
Get-Service $ServiceName | Start-Service

Write-Host "---List of Services----"
$Services=[System.Collections.ArrayList]@("spooler","W32time")
Get-Service -Name $Services

<#
Status   Name               DisplayName
------   ----               -----------
Running  spooler            Print Spooler
Running  W32time            Windows Time
#>

Write-Host "---Stop and Start List of Services----"
$Services | Get-Service | Stop-Service
$Services | Get-Service | Start-Service

Write-Host "---get help from module----"

#to get breif info about name in the get-service module
Get-Help -name Get-Service -Full


Write-Host "----ENV Variable----"

$env:COMPUTERNAME



