git config --global user.email "2007.yfukuda@gmail.com"
git config --global user.name "fkunn1326"

$now = Get-Date -format "yyyy/MM/dd HH:mm"

if((get-process "chrome" -ea SilentlyContinue) -eq $Null){ 
        echo "Not Running" 
}else{ 
    echo "Running"
    Stop-Process -processname "chrome"
}

Compress-Archive -Path * -DestinationPath D:\a\github-ci\github-ci\backups\backup.zip -Update

#Set-Location "C:\Users\runneradmin\AppData\Local\Google\Chrome\User Data"

Set-Location D:\a\github-ci\github-ci\backups
Expand-Archive backup.zip
Remove-Item backup.zip

git add .
git commit -m $now
git push -f origin main
