@echo off

setlocal EnableDelayedExpansion

FOR /R %~dp0 %%# in (*.appxbundle) DO (

SET APPXBUNDLE=%%~nx#

)

FOR /R %~dp0 %%# in (*.xml) DO (

SET License1XML=%%~nx#

)

FOR /R %~dp0 %%# in (*VCLibs*x64*.appx) DO (

SET APPXVCLibs=%%~nx#
)
 
dism /online /Add-ProvisionedAppxPackage /PackagePath:"%~dp0%APPXBUNDLE%" /LicensePath:"%~dp0%License1XML%" /DependencyPackagePath:"%~dp0%APPXVCLibs%"
