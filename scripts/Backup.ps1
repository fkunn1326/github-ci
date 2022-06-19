git config --global user.email "2007.yfukuda@gmail.com"
git config --global user.name "fkunn1326"

$now = Get-Date -format "yyyy/MM/dd HH:mm"

Set-Location "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"
git init
git add .
git commit -m $now
git branch -M main
git remote add origin https://$Args[0]@github.com/fkunn1326/ghvnc-secret
git push -u origin main
