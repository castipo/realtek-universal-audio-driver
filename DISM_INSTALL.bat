@echo off

setlocal EnableDelayedExpansion

FOR /R %~dp0 %%# in (*.appxbundle) DO (

SET APPXBUNDLE=%%~nx#

)

FOR /R %~dp0 %%# in (*.xml) DO (

SET License1XML=%%~nx#

)

dism /online /Add-ProvisionedAppxPackage /PackagePath:"%~dp0%APPXBUNDLE%" /LicensePath:"%~dp0%License1XML%" /DependencyPackagePath:"%~dp0Microsoft.VCLibs.140.00_14.0.26706.0_x64__8wekyb3d8bbwe.appx"
