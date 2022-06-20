$now = Get-Date -format "yyyy/MM/dd HH:mm"

Stop-Process -Name chrome

Set-Location "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"
Compress-Archive -Path * -DestinationPath D:\a\github-ci\github-ci\backups\backup.zip -Update

#Move-Item backups.zip D:\a\github-ci\github-ci\backups
Set-Location D:\a\github-ci\github-ci\backups

git add .
git commit -m $now
git push -u origin main
