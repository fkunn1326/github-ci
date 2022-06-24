Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
$fpath = Convert-Path C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default
Move-Item * $fpath
