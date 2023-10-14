$path="D:\python git\powershellscript\filemanagement"

try {
    $files=Get-ChildItem -Path $path -ErrorAction Stop
    Write-Output "Should still see this even if error"
    $files.foreach(
        {
            $content=Get-Content -Path $path $_.fullname
            $content
        }
    )
}catch{
    $_.exception.message
}

<#

ErrorAction: 
------------
    Continue
    Inquire
    SilentContinue
    Stop
    Suspend

#>

Write-Host "----With Default ErrorAction Prefence----"

$path="D:\python git\powershellscript\filemanagement"
$ErrorActionPreference="Stop"
try {
    $files=Get-ChildItem -Path $path
    $files.foreach({
        $content=Get-Content -Path $path $._fullname
        $content
    })
}catch {
    Write-Output "ERROR"
}

Write-Host "----ERROR With Exeception----"


$path="D:\python git\powershellscript\filemanagement"
$ErrorActionPreference="Stop"
try {
    $files=Get-ChildItem -Path $path
    $files.foreach({
        $content=Get-Content -Path $path $._fullname
        $content
    })
}catch {
    $Error[0].Exception.Message
}

Write-Host "----No Errors ----"

$path="D:\python git\powershellscript\filemanagement"
$ErrorActionPreference="Stop"
try {
    # $files=Get-ChildItem -Path $path
    # $files.foreach({
    #     $content=Get-Content -Path $path $._fullname
    #     $content
    # })
    Write-Output "No Errors"
}catch {
    $Error[0].Exception.Message
}finally {
    Write-Output "This will always run if success or failure"
}




