@echo off
rem ==============================================================================
rem Experiment 17: Windows OS Commands Execution
rem Commands: tracert, ping, ipconfig, netstat
rem ==============================================================================

echo ==========================================================
echo   Experiment 17: Windows Networking Commands Execution
echo ==========================================================

echo.
echo [1] Executing 'ipconfig /all' (Network Interface Configuration):
echo ---------------------------------------------------------------
ipconfig /all

echo.
echo [2] Executing 'ping -n 4 127.0.0.1' (ICMP Connectivity Test):
echo ---------------------------------------------------------------
ping -n 4 127.0.0.1

echo.
echo [3] Executing 'tracert -d -h 5 127.0.0.1' (Route Tracing):
echo ---------------------------------------------------------------
tracert -d -h 5 127.0.0.1

echo.
echo [4] Executing 'netstat -an' (Active Network Sockets):
echo ---------------------------------------------------------------
netstat -an | findstr "LISTENING"

echo.
echo Experiment 17 execution completed successfully.
pause
