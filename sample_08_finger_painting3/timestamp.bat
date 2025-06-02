for /f "tokens=1-5 delims=/ " %%d in ("%date%") do for /f "tokens=1-2 delims=:" %%a in ("%time%") do (
    set "timestamp=%%e-%%d-%%f_%%a-%%b"
)
echo %timestamp%
