Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20

Stop-Process -processname "firefox"

#$str_path = (Convert-Path C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-release)

#xcopy * $str_path  /e /i /r /y /c
