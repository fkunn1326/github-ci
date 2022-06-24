Set-Location ./backups/backup

Start "C:\Program Files\Mozilla Firefox\firefox.exe"
Start-Sleep -s 20
Stop-Process -processname "firefox"

$ffpath = Convert-Path C:\Users\runneradmin\AppData\Roaming\Mozilla\Firefox\Profiles\*.default-release
$fpath = $$ffpath + \*
Remove-Item $fpath

Move-Item D:\a\github-ci\github-ci\backups\backup\* $ffpath -Force