Set-Location ./backups/backup

$lpath = Convert-Path .

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"

$fpath = Convert-Path C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-release
Remove-Item $fpath\*

Move-Item $lpath\* $fpath -Force