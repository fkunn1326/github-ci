Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Move-Item * C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default
