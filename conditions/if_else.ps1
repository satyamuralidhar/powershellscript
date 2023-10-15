Write-Host "Add or subtract interger values"
Write-Host
[int]$num1 = Read-Host "Enter Number1 "
[int]$num2 = Read-Host "Enter Number2 "

$calc = Read-Host "Enter [a] for add or [b] for subtract "

if ($calc -eq 'a') {
    $result = $num1 + $num2 
    Write-Host "Adddition Value: $result"  
elseif
  $result = $num1 - $num2  
  Write-Host "Subtraction Value: $result"
}else {
    Write-Host "Please check input Needed [a or b] Values"
}