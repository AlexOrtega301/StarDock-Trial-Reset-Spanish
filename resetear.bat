@echo off
title Restablecer prueba Stardock - Script limpio
mode con lines=50 cols=150

echo Buscando instalaciones de Stardock...
echo.

if exist "C:\ProgramData\Stardock" (
    echo Se encontraron archivos de Stardock.
    echo Procediendo a eliminar: C:\ProgramData\Stardock
    RD /S /Q "C:\ProgramData\Stardock"
    echo Eliminacion completada.
    echo.
    choice /N /C YN /M "¿Deseas abrir spam4.me en el navegador? (Y/N)"
    if ERRORLEVEL 2 goto :fin
    if ERRORLEVEL 1 start "" "https://spam4.me/"
) else (
    echo No se encontró ninguna instalacion de Stardock.
)

pause
:fin
exit
