@echo off 
echo ############################################### 
echo ######-Activated License Key Checker-########## 
echo ############################################### 
SetLocal EnableDelayedExpansion 
set count=0 
for /F "delims=" %%a in ('wmic path softwarelicensingservice get oa3xoriginalproductkey') do ( 
  set key=%%a 
  set /a count=!count! + 1 
  if !count! GTR 1 goto Exit 
) 
:Exit 
echo Activated Key = %key%
echo ############################################## 
echo ########### credit by dagger :) ##############
echo ##############################################
 
cscript //NoLogo //B %windir%\system32\slmgr.vbs /ipk %key% 
cscript //NoLogo //B %windir%\system32\slmgr.vbs /ato