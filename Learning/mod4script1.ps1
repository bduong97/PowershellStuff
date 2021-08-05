Param(
    [string]$computername='BRANDON-PC')
Get-WmiObject -class win32_computersystem -ComputerName $computername | fl numberofprocessors,totalphysicalmemory