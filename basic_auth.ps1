$user = "SomeUser"
$pass= Get-Content("$PSScriptRoot\pwd.txt") #add password to a file
$secpasswd = ConvertTo-SecureString $pass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($user, $secpasswd)
$root = "http://someurl"
#example query
$result = Invoke-RestMethod $root -Credential $credential -TimeoutSec 10
