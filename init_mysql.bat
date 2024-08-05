@echo off

REM Check if the required arguments are provided
if "%~1"=="" (
    echo Usage: %0 MYSQL_ROOT new_password
    exit /b 1
)

if "%~2"=="" (
    echo Usage: %0 MYSQL_ROOT new_password
    exit /b 1
)

REM Set the MySQL root folder and new password variables
set MYSQL_ROOT=%~1
set NEW_PASSWORD=%~2

REM Remove the data directory
rmdir /S /Q "%MYSQL_ROOT%\Data"

REM Initialize MySQL database with no password for root
"%MYSQL_ROOT%\bin\mysqld" --initialize-insecure

REM Start MySQL server in console mode
start "" "%MYSQL_ROOT%\bin\mysqld" --console

REM Wait for a few seconds to ensure MySQL server starts
timeout /t 10 /nobreak

REM Set the new password for root user
"%MYSQL_ROOT%\bin\mysqladmin" -u root password "%NEW_PASSWORD%"

REM Wait for a few seconds to ensure the password is set
timeout /t 5 /nobreak

REM Terminate the MySQL server process
for /f "tokens=2" %%i in ('tasklist ^| findstr mysqld') do taskkill /f /pid %%i

echo MySQL initialization and password setup completed.
