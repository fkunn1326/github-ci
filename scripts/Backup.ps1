git config --global user.email "2007.yfukuda@gmail.com"
git config --global user.name "fkunn1326"

$now = Get-Date -format "yyyy/MM/dd HH:mm"

Set-Location "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"
echo +$now >> README.md
7z.exe a backups.zip .

Move-Item backups.zip $GITHUB_WORKSPACE\backups
Set-Location D:\a\github-ci\github-ci\backups

pwd
dir
