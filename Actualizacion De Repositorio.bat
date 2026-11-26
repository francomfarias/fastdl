@echo off
title Actualizador de FastDL - Zombie Plague
echo ===================================================
echo   ACTUALIZANDO FASTDL EN GITHUB...
echo ===================================================
echo.

:: Ir a la carpeta donde esta guardado este archivo .bat
cd /d "%~dp0"

:: Agregar todos los archivos nuevos, modificados o eliminados
echo [1/3] Preparando archivos del servidor (models, sound, maps, sprites)...
git add .

:: Crear el commit con la fecha y hora actual
echo [2/3] Guardando cambios...
git commit -m "Actualizacion FastDL ZP - %date% %time%"

:: Subir los cambios a GitHub
echo [3/3] Subiendo archivos a GitHub...
git push

echo.
echo ===================================================
echo   PROCESO TERMINADO
echo ===================================================
pause
