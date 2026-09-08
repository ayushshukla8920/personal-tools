Invoke-WebRequest https://github.com/fabianosrc/RDPControl/archive/refs/heads/main.zip -OutFile RDPControl.zip
Expand-Archive RDPControl.zip -DestinationPath .
Rename-Item RDPControl-main RDPControl
cd RDPControl
Import-Module .\RDPControl.psd1 -Force
Initialize-RdpEnvironment
Set-RdpSessionMode -Enabled
Start-RdpWatchdog