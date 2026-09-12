@echo off
REM ============================================================
REM  Wan2GP launcher (StabilityMatrix venv) - detailed logs
REM  SETUPTOOLS_USE_DISTUTILS=stdlib is REQUIRED for this venv,
REM  otherwise setuptools/_distutils_hack raises AssertionError.
REM ============================================================
cd /d "D:\StabilityMatrix\Data\Packages\Wan2GP"
set "SETUPTOOLS_USE_DISTUTILS=stdlib"
".\venv\Scripts\python.exe" wgp.py --multiple-images --verbose 1 --profile 4 --perc-reserved-mem-max 0.4 --check-loras --loras "D:\CustomModels\loras"
echo.
echo ==== Wan2GP stopped (exit code %ERRORLEVEL%) ====
pause
