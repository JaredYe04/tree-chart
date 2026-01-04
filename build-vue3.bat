@echo off
echo ========================================
echo Building tree-chart-core...
echo ========================================
cd packages\tree-chart-core
call pnpm build
if %errorlevel% neq 0 (
    echo Failed to build tree-chart-core
    pause
    exit /b %errorlevel%
)
cd ..\..

echo.
echo ========================================
echo Building vue3-tree-chart...
echo ========================================
cd packages\vue3-tree-chart
call pnpm build:component
if %errorlevel% neq 0 (
    echo Warning: vue3-tree-chart build had errors, but continuing...
)
cd ..\..

echo.
echo ========================================
echo Starting demo server...
echo ========================================
cd packages\tree-chart-demo
call pnpm dev
cd ..\..

pause

