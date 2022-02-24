@echo off

IF not exist archiver\arc.exe (
    set GOBIN=%cd%\archiver
    go install github.com/mholt/archiver/v3/cmd/arc@latest
)

IF not exist dart-sass (
    curl\bin\curl.exe --progress-bar -Lo dart-sass.zip https://github.com/sass/dart-sass/releases/download/1.49.8/dart-sass-1.49.8-windows-x64.zip
    archiver\arc unarchive dart-sass.zip
)

@REM call dart-sass\sass.bat --version
call dart-sass\sass.bat scss/style.scss dist/style.css
md dist 2>nul >nul
copy html\index.html dist\ 2> nul > nul