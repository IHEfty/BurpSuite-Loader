@echo off
set "url=https://firebasestorage.googleapis.com/v0/b/snigebrawlaereht.appspot.com/o/uploads%2Fburpsuite.zip?alt=media&token=216de97b-2f11-4c6d-a3fa-9d7c50b57d15"
set "output=burpsuite.zip"

echo Downloading BurpSuite...
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%output%'"

if %errorlevel% equ 0 (
    echo Download complete: %output%
) else (
    echo Failed to download the file.
)
pause
