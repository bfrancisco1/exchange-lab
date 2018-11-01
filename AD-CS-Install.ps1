import-module ServerManager
Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
Add-WindowsFeature Adcs-Enroll-Web-Svc -IncludeAllSubFeature -IncludeManagementTools
Add-WindowsFeature Adcs-Web-Enrollment -IncludeAllSubFeature -IncludeManagementTools

#Configure the certificate service via ServerManager
#SHA256 Hash algorithm
#
#For web Enroll
#windows type authentication
#built-in identity pool