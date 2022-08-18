@echo off
@REM call dart-sass\sass.bat --version

scall dart-sass\sass.bat scss/style.scss dist/style.css
md dist 2>nul >nul
copy html\index.html dist\ 2> nul > nul