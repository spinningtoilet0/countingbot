@echo off
echo Make sure you have NodeJS installed!
timeout /t 3 /nobreak
echo Installing...
npm i discord.js
npm i fs
npm i ms
set /p tok=What is your bot token?  
set /p pref=What will the bot's prefix be? 
(
    echo {
    echo    "token": "%tok%",
    echo    "prefix": "%pref%"
    echo }
) >config.json
(
    echo @echo off
    echo node index.json
    echo pause
) >run.bat
set /p yn=Would you like to run the bot now?
if /I "%yn%" EQU "N" exit
if /I "%yn%" EQU "n" exit
node index.js
pause
