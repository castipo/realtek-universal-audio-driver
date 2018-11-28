@echo off
set signtool="C:\Program Files (x86)\Windows Kits\10\bin\10.0.17763.0\x64\signtool.exe"
set /p Ver=Enter Version: 
set CodecExtOem_RTK_INTEL.PCH=%~dp0Test\CodecExtOem_RTK_INTEL.PCH_%Ver%
set CodecExtOem_RTK_INTEL.PCHCat="%~dp0Test\CodecExtOem_RTK_INTEL.PCH_%Ver%\intcdmicext.cat"
:Start
CLS
ECHO 1.CodecExtOem_RTK_INTEL.PCH
ECHO.

CHOICE /C 1 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 1 goto CodecExtOem_RTK_INTEL.PCH

CLS
:CodecExtOem_RTK_INTEL.PCH
>output.txt (
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251225.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251269.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1025126C.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251272.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1025127E.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251281.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1025129A.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1025129C.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1025129D.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251300.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251302.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251303.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251305.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251306.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251308.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251312.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10251322.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10280907.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_10280908.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_103C85E6.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Gen3pKey_1E26221A.dat          
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Int2ndConfiguration_1025126C.tf
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Int2ndConfiguration_1025129A.tf
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Int2ndConfiguration_1025129D.tf
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\Int2ndConfiguration_10251308.tf               
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExtTuning2_Acer.inf    
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExtTuning_Acer.inf     
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExtTuning_Dell.inf     
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExtTuning_Fujitsu.inf  
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExtTuning_Hp.inf       
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExt_Acer.inf           
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExt_Dell.inf           
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExt_Fujitsu.inf        
%signtool% verify /v /pa /c "%CodecExtOem_RTK_INTEL.PCHCat%" "%CodecExtOem_RTK_INTEL.PCH%\IntcDMicExt_Hp.inf   
)
pause
CLS
GOTO Start
