Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"

dir C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles

xcopy * C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-release /e /i
