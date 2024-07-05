:: Made by ItzTimmehz (https://github.com/ItzTimmehz)

@echo off
setlocal

:: Operating System Information
echo Operating System Information:
wmic os get Caption, Version, OSArchitecture, InstallDate

:: Processor Information
echo Processor Information:
wmic cpu get Name, Description, MaxClockSpeed, NumberOfCores

:: Memory Information
echo Memory Information:
wmic memorychip get BankLabel, Capacity, Speed, Manufacturer

:: Disk Drive Information
echo Disk Drive Information:
wmic diskdrive get Caption, Size, Model, MediaType

:: Network Adapter Information
echo Network Adapter Information:
wmic nic get Name, MACAddress, Speed

:: Graphics Card Information
echo Graphics Card Information:
wmic path win32_videocontroller get Caption, AdapterRAM, VideoModeDescription

:: Motherboard Information
echo Motherboard Information:
wmic baseboard get Manufacturer, Product, Version, SerialNumber

:: BIOS Information
echo BIOS Information:
wmic bios get Manufacturer, Version, ReleaseDate, BIOSVersion, SerialNumber, SMBIOSBIOSVersion

:: User Account Information
echo User Account Information:
wmic useraccount get Name, FullName, SID

:: Security and Firewall Settings
echo Security and Firewall Settings:
wmic /namespace:\\root\SecurityCenter2 path AntiVirusProduct get displayName, pathToSignedProductExe

:: System Events and Logs
echo System Events and Logs:
wmic nteventlog get Name, NumberOfRecords, FileSize

pause
endlocal
exit /b

:: Made by ItzTimmehz (https://github.com/ItzTimmehz)