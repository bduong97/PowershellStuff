#string array paremters are separated by commas

Param(
[Parameter(Mandatory=$true)][string[]]$computers)
foreach ($computername in $computers)
{
    $win32Output = Get-CimInstance -ClassName win32_computersystem -ComputerName $computername
    Write-Output $win32Output.totalphysicalmemory
}