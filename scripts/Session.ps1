while ($true){
  Start "C:\Program Files\Mozilla Firefox\firefox.exe -url $openurl"
  Start-Sleep -s 20
  
  Stop-Process -processname "firefox"
  Start-Sleep -s 1800
}
