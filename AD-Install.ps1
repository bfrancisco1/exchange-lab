Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Add-WindowsFeature RSAT-AD-Tools
Get-WindowsFeature AD-Domain-Services | Install-WindowsFeature -source wim:d:\sources\install.wim:2
$pwd = ConvertTo-SecureString -String 'Francisco1' -AsPlainText -Force
import-Module ADDSDeployment 
Install-ADDSForest -DomainName "corp.francisco.science" -DomainNetBiosName  "corp" -DomainMode 6 -ForestMode 6 -NoDnsOnNetwork -NoRebootOnCompletion -safemodeadministratorpassword $pwd -force
Restart-Computer