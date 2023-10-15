#Check The Specfic Process id's Using Name


function ProcessName {
    param([string]$ProcessName)

    $Val=Get-Process | Select-Object Id,ProcessName,CPU -First 10
    $result=$Val | Select-Object ProcessName,Id | Where-Object "ProcessName" -eq $ProcessName
    return $result
    }

ProcessName $ProcessName
#ProcessName Chrome
