@echo off
title Push Campus Share to GitHub
echo =======================================================
echo   Pushing Campus Share to GitHub (harsh200345-del)
echo =======================================================
echo.
cd /d "%~dp0"
git branch -M main
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo =======================================================
    echo   [SUCCESS] Code successfully pushed to GitHub!
    echo   Next step: Deploy on Render (https://dashboard.render.com)
    echo =======================================================
) else (
    echo =======================================================
    echo   [NOTICE] If the repository does not exist yet on GitHub,
    echo   create it first at: https://github.com/new?name=campus-share-rkgit
    echo =======================================================
)
pause
