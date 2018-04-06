@echo off

if exist %TEMP%\albanianvirus.vbs (
  echo Uninstalling Albanian Virus
  schtasks /delete /tn AlbanianVirus
  del %TEMP%\albanianvirus.vbs
) else (
  echo Installing Albanian Virus...
  echo MsgBox "Hi, I am an Albanian virus but because of poor technology in my country unfortunately I am not able to harm your computer. Please be so kind to delete one of your important files yourself and then forward me other users. Many thanks for your cooperation! Best regards, Albanian virus", 16, "Virus Alert !" > %TEMP%\albanianvirus.vbs
  schtasks /create /tn AlbanianVirus /tr %TEMP%\albanianvirus.vbs /sc hourly /st 00:00
)

echo Done.

pause
