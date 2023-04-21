Dim objShell
Set objShell = CreateObject("WScript.Shell")
objShell.Run "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File c:\tmp\test_script.ps1", 0, True
Set objShell = Nothing
