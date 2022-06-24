Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"

xcopy C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles * /e /i