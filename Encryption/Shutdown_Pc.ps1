#Exits script on first error
$ErrorActionPreference = "Stop"

$User = Read-Host 'Please input your username: '
$PasswordFile = 'encrypted.test'
$KeyFile = 'key.test'
$PCName = 'BRANDON-LAPTOP'
$key = Get-Content $KeyFile
$MyCredential = New-Object -TypeName System.Management.Automation.PSCredential `
 -ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)

Invoke-Command -ComputerName $PCName -ScriptBlock {Restart-Computer -Force} -Credential $MyCredential