#create a directrories range of 1 to 5
$path="D:\python git\powershellscript\qt"

1..5 | ForEach-Object {
    New-Item "$path\test$_" -ItemType Directory -Force
}




<#
1.for each directory create a multiple file like dir 1 container 5 file 
2.every file must contain text with file number
#>


#create a directrories range of 1 to 5
$path="D:\python git\powershellscript\qt"

1..5 | ForEach-Object {
    $directory_path="$path\test$_"
    New-Item $directory_path -ItemType Directory -Force

    1..5 | ForEach-Object {
        $files_path="$directory_path\$test$_"  #creating a file inside a directory
        New-Item "$files_path.txt" -ItemType File -Force -Value "Hello This is file$_"
    }
}

