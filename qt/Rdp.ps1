#Rdp to server
mstsc -v 52.149.157.175

<#

We Have to Use SecureShell to connect one machine to another machine.
on Remote Machine:
------------------
On Cloud Winodws server $Enable-PSRemoting 
and winrm permissions on both local and remote 
#>

#Connect remote Windows Server

$credentials=Get-Credential mydesktop
Enter-PSSession -ComputerName 52.149.157.175 -Credential $credentials


#Install IIS Server On Remote Windows Machine
Install-WindowsFeature -Name Web-Server -IncludeManagementTools 