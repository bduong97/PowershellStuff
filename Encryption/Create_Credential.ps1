$User = 'brandonduongneon@outlook.com'
$PasswordFile = 'encrypted.test'
$KeyFile = 'key.test'
$key = Get-Content $KeyFile
$MyCredential = New-Object -TypeName System.Management.Automation.PSCredential `
 -ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)
Invoke-Command -ComputerName BRANDON-LAPTOP -ScriptBlock {Restart-Computer -Force} -Credential $MyCredential