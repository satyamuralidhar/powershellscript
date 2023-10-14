$Service_Name = "Browser"
$GetService = Get-Service -Name $Service_Name

if ($GetService.Status -eq "Running") {
    write-host "Service Is Running"
}
else {
     Write-Host $GetService.Status
}
#to start the service Start-Service $Service_Name