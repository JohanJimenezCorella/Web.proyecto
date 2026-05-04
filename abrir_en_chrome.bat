@echo off
echo Abriendo PetPals en Google Chrome...

REM Intentar abrir con Chrome (rutas comunes)
set "CHROME1=C:\Program Files\Google\Chrome\Application\chrome.exe"
set "CHROME2=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
set "FILE=%~dp0index.html"

if exist "%CHROME1%" (
    start "" "%CHROME1%" "%FILE%"
) else if exist "%CHROME2%" (
    start "" "%CHROME2%" "%FILE%"
) else (
    REM Si no encuentra Chrome, abrir con el navegador por defecto
    echo Chrome no encontrado, abriendo con navegador por defecto...
    start "" "%FILE%"
)
