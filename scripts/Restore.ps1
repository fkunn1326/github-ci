Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"


$src = C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles

xcopy $src * /e /i