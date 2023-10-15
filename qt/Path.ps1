<#

$Get-Help Test-Path -Online --> To Get online Dcoumnetation from MS.

Leaf --> File
Container ---> Folder

#>
#check Path is exit or not
Test-Path "D:\python git" 
Test-Path "D:\python git" -IsValid

$path="D:\python git"
Test-Path -Path $path 
#check path contains folder or not
Test-Path -Path $path -PathType Container 
#check path contains files or not
Test-Path -Path $path -PathType Leaf


<#

New-Item -> to create new file or directiory

#>

Get-Help New-Item -Online

$path="D:\python git\powershellscript\qt"
#Create a file in current dir
New-Item -Name test.txt -Path $path -ItemType File
#Create a Dir in current dir
New-Item -Name Dev -Path $path -ItemType Directory
#Create a symlink(shortcut) for test file
New-item -Name test1.txt -Path $path -ItemType SymbolicLink -Value $path\test.txt
#create a content in file
New-Item -Name demo.py  -Path $path -Value 'print("hello world")'



$path="D:\python git\powershellscript\qt"
Remove-Item -Path $path\test.txt
#detele file which ends with .txt
Remove-Item -Path $path\*.txt
#remove dir
Remove-Item -Path $path\Dev



Get-Alias | more #"Shows the alias"

#properties
$path="D:\python git\powershellscript\qt"
Get-ItemProperty -Path $path\permission.csv
Set-ItemProperty -Path $path\permission.csv -Name IsReadOnly -Value $true
(Get-ItemProperty -Path $path\permission.csv).IsReadOnly
(Get-ItemProperty -Path $path\permission.csv).Attributes

#or we can use attribute give permission
$path="D:\python git\powershellscript\qt"
Get-ItemProperty -Path $path\permission2.csv
$file=Get-ItemProperty -Path $path\permission2.csv
$file.Attributes += 'ReadOnly'
$file.Attributes
Get-ItemProperty -Path $path\permission2.csv


<#

Permisssions: 

Get-Acl and Set-Acl to deal with permissions

#>

$path="D:\python git\powershellscript\qt"

Get-Acl -Path $path
<#
    Directory: D:\python git\powershellscript


Path Owner                 Access
---- -----                 ------
qt   LAPTOP-AV0J9JU7\satya BUILTIN\Administrators Allow  FullControl...

#>

#check the access of folder which kind of permission i have that folder


$path="D:\python git\powershellscript\qt"
Get-Acl -Path $path | Select-Object -ExpandProperty Access

<#

FileSystemRights  : FullControl  
AccessControlType : Allow        
IdentityReference : BUILTIN\Admi 
                    nistrators   
IsInherited       : True
InheritanceFlags  : None
PropagationFlags  : None

FileSystemRights  : 268435456    
AccessControlType : Allow        

#>

