git config --global user.email "2007.yfukuda@gmail.com"
git config --global user.name "fkunn1326"

$now = Get-Date -format "yyyy/MM/dd HH:mm"

Set-Location "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"
echo +$now >> README.md
7z.exe a backups.zip .

Move-Item backups.zip $GITHUB_WORKSPACE\backups
Set-Location $GITHUB_WORKSPACE

echo +$now >> README.md
git init
git add .
git commit -m $now
git branch -M main
git remote add origin https://$Args@github.com/fkunn1326/ghvnc-secret
git pull origin　main
git push -u origin main
