$name = "John"
function Receive-Output
{
    process {
        write-host $_ -ForegroundColor Green
    }
}

Write-Output "this is a test" | Receive-Output
Write-warning "DANGER $name"

$username = Read-Host "Who are you?"
$password = Read-Host "What's your password?" -asSecureString