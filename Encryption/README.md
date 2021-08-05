# Description 
The main scripts are `Encrypt_password.ps1` and `Shutdown_PC.ps1`. The former will encrypt a password that you give it, the latter will take a username as input
and use the encrypted password from `Encrypt_password.ps1` to run a command that shuts down a remote computer. These scripts assume that you have WinRM setup on both your host and remote PCs.
A guide on how to do so can be found here: https://docs.microsoft.com/en-us/windows/win32/winrm/installation-and-configuration-for-windows-remote-management

# Usage
- `Encrypt_password.ps1`
    - Input your password, and a randomly generated 128 bit AES key will encrypt it. The key will be stored in `key.test`. It is recommended to restrict read access
    to this file so that only authorized users may view it.
    - The encrypted password will be stored in `encrypted.test`
- `Shutdown_Pc.ps1`
    - Input your username, and the remote pc will restarted. The remote PC host name is defined within `Shutdown_pc.ps1` as a variable, `$PCName`. You should change this to match
    the host name of your remote PC. 
    - Inputting a valid username, and using the password from `encrypted.test`, should result in your remote PC restarting. 
