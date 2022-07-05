while ($true){
  echo $url
  "C:\Program Files\Mozilla Firefox\firefox.exe -url $url"
  Start-Sleep -s 20
  
  Stop-Process -processname "firefox"
  Start-Sleep -s 1800
}
