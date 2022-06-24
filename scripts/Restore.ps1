Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20

$fpath = Convert-Path C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-release
echo $fpath
dir
#Move-Item * $fpath -Force