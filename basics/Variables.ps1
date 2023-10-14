#create a variable
$Name="Satya"
$Name

$num1=1
$num2=2
$num3=3
$add=$num1+$num2+$num3
$add
$div=$num1 % $num2
$div

#setting strict mode to debug outr code eventually
#Set-StrictMode -Version latest
#Set-StrictMode -off --> to off strict mode

$GivenName="Murali"
$GivenName.GetType()


#float as double
$DoubleValue=3.5
$DoubleValue.GetType()


#Empty
$null #"--> no value will print its built in var "

#boolean
$val=$True 
$val.GetType()


$val1=7
$val2=2
($val1 -le $val2).GetType()


Get-Date
$today=Get-Date
$today
$today.GetType()