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
    $Num1=$num1
    $Num2=$num2
    
    $num1= Read-Host "Enter num1 "
    $num2= Read-Host "Enter num2 "
    
    $Input = Read-Host "Enter Input Value like [add,sub,mul,div,sq] q for quit "

    switch ($Input) {
        "add" {
            $val = $num1+$num2
            Write-Output "Addition of $num1 and $num2 is: $val"
        }
        "sub" {
            $val = $num1-$num2
            Write-Output "Subtrcation of $num1 and $num2 is: $val"
        }
        "mul" {
            $val = $num1 * $num2
            Write-Output "Multiplication of $num1 and $num2 is: $val"
        }
        "div" {
            $val = $num1/$num2
            Write-Output "Division of $num1 and $num2 is: $val"
        }
        "sq" {
            $val = ($num1 * $num1)
            Write-Output "Square of $num1 is : $val"
        }"q" {
            exit
        }
        Default {
            Write-Output "Provide Proper Value"
        }

    }
}

Caliculator
