# PowerShell
Collection of PowerShell scripts useful for cybersecurity/incident response 


### PS_DisplayAUHackingMalwareIncidents.ps1

- downloads, unzips, filters and diplays incidents from Verizon's VERIS Community Database
- creates .\vcdb\vcdb_1-of-1.json path hierarchy
- script is filtered by default for Australian hacking/malware incidents, but can be easily changed

![image](https://user-images.githubusercontent.com/22593960/176925158-a212aa7a-e0fa-40b4-868e-ec29e628524d.png)


### PS_GetShadyProcessModules.ps1

- identifies DLL/Exe modules loaded into processes which are located outside of following lists:
  - entries located in registry key HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\KnownDLLs 
  - C:\Windows\*
  - C:\Program Files\*
