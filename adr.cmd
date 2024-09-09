@echo off
setlocal enabledelayedexpansion

:: Get the directory of the current script
set "script_dir=%~dp0"

:: Path to the venv folder (located in the same directory as the script)
set "venv_path=%script_dir%venv"

:: Path to the .env file
set "env_file=%script_dir%.env"

:: Activate venv
call "%venv_path%\Scripts\activate.bat"

:: Check if venv activation was successful
if %errorlevel% neq 0 (
    echo Error activating virtual environment.
    exit /b %errorlevel%
)

:: Check if .env file exists
if exist "%env_file%" (
    :: Run aider with --env-file parameter and all passed arguments
    aider --env-file "%env_file%" %*
) else (
    :: Run aider with all passed arguments without --env-file parameter
    aider %*
)

:: Save aider's exit code
set aider_exit_code=%errorlevel%

:: Deactivate venv
call deactivate

:: Return aider's exit code
exit /b %aider_exit_code%

endlocal