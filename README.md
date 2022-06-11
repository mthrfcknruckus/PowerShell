# PowerShell
Collection of PowerShell scripts useful for cybersecurity incident response 

### PS_GetShadyProcessModules.ps1

- identifies DLL/Exe modules loaded into processes which are located outside of following lists:
  - entries located in registry key HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs 
  - C:\Windows\*
  - C:\Program Files\*
