while ($true){
  "C:\Program Files\Mozilla Firefox\firefox.exe -url $Args"
  Start-Sleep -s 50
  
  Stop-Process -processname "firefox"
  Start-Sleep -s 1800
}
