#To Check Env Variable exist or not
$env:Mydata

#Creating a Environmental Variable
[System.Environment]::SetEnvironmentVariable("Mydata","satyamachine","Machine")
# Removing env variable
[System.Environment]::SetEnvironmentVariable("Mydata",$null,"Machine")
