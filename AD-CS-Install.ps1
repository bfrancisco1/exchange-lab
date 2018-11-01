import-module ServerManager
Add-WindowsFeature Adcs-Cert-Authority -IncludeManagementTools
Add-WindowsFeature Adcs-Enroll-Web-Svc -IncludeAllSubFeature -IncludeManagementTools
Add-WindowsFeature Adcs-Web-Enrollment -IncludeAllSubFeature -IncludeManagementTools

#Configure the certificate service via ServerManager
##Select Certification Authority and Certification Authority Web Enrollment
##Select ENterprise CA
##Select ROot CA
##Create new private key
##SHA256 Hash algorithm
##Allow admin interaction
##leave default names
##specify 5 year validity
##leave default database location
#
#For cert Enrollweb service
##select CA name
##windows type authentication
##built-in identity pool
##use default SSL cert (this is the root cert for the root CA)