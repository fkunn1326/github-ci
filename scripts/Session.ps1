while ($true){
  start "C:\Program Files\Mozilla Firefox\firefox.exe -url $Args"
  Start-Sleep -s 20
  
  Stop-Process -processname "firefox"
  Start-Sleep -s 1800
}
