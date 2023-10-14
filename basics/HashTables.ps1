#Hash Tables are like Dictionary key value pairs

$Users=@{
    name="Satya"
    age=29
    mail="satya@testmail.com"
}
$Users
$Users.GetType()
$Users.Keys
$Users.Values
$Users['age']
Write-Host "---Stage1---"
$Users.Add("College","Jntuk")
$Users
Write-Host "---Stage2---"
$Users["Branch"]="ECE"
$Users
Write-Host "---Stage3---"
$Users.ContainsKey("College")
$Users.ContainsKey("Colleges")
$Users.ContainsValue(29)
Write-Host "---Stage4---"
$Users.Remove("College")
$Users
