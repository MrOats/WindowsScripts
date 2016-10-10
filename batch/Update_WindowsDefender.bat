:: Created by Drake Denston
:: Last updated 2016-10-09
:: Updates Windows Defender's Anti-Malware and Anti-Spyware Signatures
:: Best if added to Task Scheduler...
set bool_EnableVirusCheck=true
set bool_EnableSpywareCheck=true
:: Update Virus/Malware Definitions first...
if %bool_EnableVirusCheck% EQU true (
  "C:\Program Files\Windows Defender\MpCmdRun.exe" -SignatureUpdate
)
:: Update Spyware Definitons next...
if %bool_EnableSpywareCheck% EQU true (
  "C:\Program Files\Windows Defender\MpCmdRun.exe" -SignatureUpdate -MMPC
)
