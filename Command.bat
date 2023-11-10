@echo off
title Central Park Control Console

echo Jurassic Park, System Security Interface
echo Version 4.05, Alpha E
echo Ready...

:LOOP
cls
echo.
echo Jurassic Park, System Security Interface
echo Version 4.05, Alpha E
echo Ready...
echo Enter command:

set /p command=

if /i "%command%"=="access main security grid" (
    echo Enter the password:
    set /p password=
    if "%password%"=="JurassicPark04" (
        echo Access granted! You may now control the main security grid.
    ) else (
        cls
        echo Access: PERMISSION DENIED........
        echo YOU DIDN'T SAY THE MAGIC WORD
        for /l %%i in (1,1,10) do (
            echo.
        )
        start "" "video_file.mp4"  # Replace "video_file.mp4" with the actual video file path.
        timeout /t 5 /nobreak  # Wait for 5 seconds before restarting the loop.
    )
} else (
    cls
    echo Invalid command.
    pause
)

goto LOOP
