#Encrypts a password from userinput
#Don't want to store the key because that can be encrypted, however can store the encrypted password if its been encrypted with the key
#should take away read/write access so its not possible to reverse engineer the key
$password = Read-Host -AsSecureString "Please input your password"
$key = New-Object Byte[] 16
$key_file = 'key.test'
$password_file = 'encrypted.test'
#Generating random AES key, should make sure this file has strict permissions
[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key)
$key > "$key_file"
Write-Output "Wrote key to $key_file"

#encrypts the password using the given key
Write-Output 'Encrypting file using randomly generated key...'
$encrypted_password = $password | ConvertFrom-SecureString -Key $key > "$password_file"
Write-Output "Wrote password to $password_file"
#$decrypted_password = $encrypted_password | ConvertTo-SecureString -SecureKey $key | ConvertFrom-SecureString -AsPlainText
