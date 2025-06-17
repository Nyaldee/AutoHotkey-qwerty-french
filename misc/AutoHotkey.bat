@echo off
ftype ahkfile="%~dp0AutoHotkey64.exe" "%%1"
assoc .ahk="ahkfile"
pause