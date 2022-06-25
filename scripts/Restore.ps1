Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"

Remove-Item C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\* -Force
New-Item -Path 'C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\fkunn1326.default-release' -ItemType Directory

dir 'C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles'

Move-Item * C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles -Force