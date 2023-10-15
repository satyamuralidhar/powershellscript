function Caliculator {
    param (
        [int]$num1,
        [int]$num2,
        [string]$add,
        [string]$sub,
        [string]$mul,
        [string]$div,
        [string]$square

    )
    $add="add"
    $sub="sub"
    $mul="mul"
    $div="div"
    $square="sq"

    $Input = Read-Host "Enter Input Value like [add,sub,mul,div,sq] "
    if ($Input -eq $add) {
        $val = $num1+$num2
        Write-Output "Addition of $num1 and $num2 is: $val"
    }elseif ($Input -eq $sub) {
        $val = $num1-$num2
        Write-Output "Subtraction of $num1 and $num2 is: $val"
    }elseif ($Input -eq $mul) {
        $val = $num*$num2
        Write-Output "Multiplication of $num1 and $num2 is: $val"
    }elseif ($Input -eq $div) {
        $val = $num1/$num2
        Write-Output "Division of $num1 and $num2 is: $val"
    }elseif ($Input -eq $square) {
        Write-Output "Enter Single Number to get Square: "
        $val = ($num1 * $num1)
        Write-Output "Square of $num1 is : $val"
    }
    else {
        "Enter Proper Input"
    }
    
    
}
Caliculator 10