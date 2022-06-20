Set-Location backups
Expand-Archive backup.zip
Remove-Item backup.zip

Move-Item　.\backup\* "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"
