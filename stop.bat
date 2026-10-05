@echo off
REM SobbahTech NMS - hentikan (Windows). Data tetap tersimpan di volume.
setlocal
cd /d "%~dp0"
echo Menghentikan SobbahTech NMS...
docker compose down
echo.
echo Dihentikan. Data (DB/upload/log) tetap aman.
echo Jalankan start.bat untuk menyalakan kembali.
pause
