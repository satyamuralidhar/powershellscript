$filepath="D:\python git\powershellscript\filemanagement\getservices\test.csv"
$Data=Get-Content -Path $filepath
$Data
$Data[1]
Write-Host "----Stage1----"

$UserName=$Data[0]
if ($UserName -eq "Mohan") {
    Write-Output "Hi This is Mohan"
}elseif ($UserName -eq "Pavan") {
    Write-Output "Hi This is Pavan"
}elseif ($UserName -eq "Murali") {
    Write-Output "Hi This is Murali"
}elseif ($UserName -eq "Satya") {
    Write-Output "Hi This is Satya"
}else{
    Write-Output "No User Found"
}

