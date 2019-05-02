cd %~dp0

copy FE8_clean.gba _MAFC.gba

cd "%~dp0Event Assembler"

Core A FE8 -output:"%~dp0_MAFC.gba" -input:"%~dp0ROM Buildfile.event"

if exist "%~dp0ups/ups.exe" (
    cd "%~dp0ups"
    ups diff -b "%~dp0FE8_clean.gba" -m "%~dp0_MAFC.gba" -o "%~dp0_MAFC.ups"
)

pause
