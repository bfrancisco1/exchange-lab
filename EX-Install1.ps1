Install-WindowsFeature AS-HTTP-Activation, Desktop-Experience, NET-Framework-45-Features, RPC-over-HTTP-proxy, RSAT-Clustering, RSAT-Clustering-CmdInterface, Web-Mgmt-Console, WAS-Process-Model, Web-Asp-Net45, Web-Basic-Auth, Web-Client-Auth, Web-Digest-Auth, Web-Dir-Browsing, Web-Dyn-Compression, Web-Http-Errors, Web-Http-Logging, Web-Http-Redirect, Web-Http-Tracing, Web-ISAPI-Ext, Web-ISAPI-Filter, Web-Lgcy-Mgmt-Console, Web-Metabase, Web-Mgmt-Console, Web-Mgmt-Service, Web-Net-Ext45, Web-Request-Monitor, Web-Server, Web-Stat-Compression, Web-Static-Content, Web-Windows-Auth, Web-WMI, Windows-Identity-Foundation
#Install .net 4.6.2
#Install UCMARuntime
#Install Office 2010 filter pack 64bit
#Install office 2010 filter pack sp1

#run from exchange disc d:\setup.exe/prepareAD /OrganizationName:corp /IAcceptExchangeServerLicenseTerms
#create c:\exchange\database and c:\exchange\logs folder
#run from exchange disc Setup.exe /mode:Install /role:ClientAccess,Mailbox /MdbName:GeneralStore /DbFilePath:X:\Exchange\database\GeneralStore.edb /LogFolderPath:X:\Exchange\logs /IAcceptExchangeServerLicenseTerms

New-ExchangeCertificate -FriendlyName "corp Certificate" -DomainName autodiscover.corp.francisco.science,owa.corp.francisco.science,mail.corp.francisco.science -GenerateRequest -PrivateKeyExportable $true -KeySize 2048 -RequestFile "c:\DomainCSRRequest.csr"
#submit to http://dc01/certsrv
#download in der format
Import-ExchangeCertificate -filename c:\cert.cert
