#empty array
$Name=@()
$name.GetType()
$name.IsFixedSize

#Array
$Name1=@("satya","mohan","pavan")
$Name1.GetType()
$Name1.IsFixedSize #"Its fixed size"
$Name1[0]
$Name1[2]
Write-Host "---Stage1---"
$Name1+"Murali"
$Name1[3]
Write-Host "---Stage2---"
$Name1=$Name1 -ne 'Murali'
$Name1

#Arraylist
$Namelist=[System.Collections.ArrayList]@()
$Namelist.GetType()
$Namelist.IsFixedSize  #"Its No fixed size"

$Namelist1=[System.Collections.ArrayList]@("Satya","Mohan","Pavan")
$Namelist1
Write-Host "---Stage1---"
$Namelist1[1]
Write-Host "---Stage2---"
#$Namelist1.Add("Muralidhar") 
<#Note: while adding $Namelist1.Add("Muralidhar")
will get o/p like their index position "like:3" to avoid this use $null before add value
#>
$null=$Namelist1.Add("Muralidhar") 
$Namelist1
Write-Host "---Stage3---"
$Namelist1.Remove("Satya")
$Namelist1
Write-Host "---Stage4---"
$Namelist1.RemoveAt(0) #remove using index position
$Namelist1
