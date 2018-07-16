# CENTOS 6 OCS PANEL AND VPS AUTOSCRIPT

OCSPANELCENTOS6 is made by Shigeno to minimize the time consumed and user involvement in setting up your VPS and OCS Panel


### How to Use the OCSPanelCentos6 AutoScript

All you need to do is Copy and Paste the commands posted below to the console/terminal of your VPS

FOR OCS PANEL ONLY

### Commands

```
yum -y update && yum -y install wget && wget https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/OCSCentos.sh && chmod +x OCSCentos.sh && ./OCSCentos.sh && rm -f OCSCentos.sh && history -c
```

FOR VPS ONLY

### Commands
```
yum -y update && yum -y install wget && wget https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/VPSCentos6.sh && chmod +x VPSCentos6.sh && ./VPSCentos6.sh && rm -f VPSCentos6.sh && history -c
```

FOR OCS PANEL AND VPS

### Commands
```
yum -y update && yum -y install wget && wget https://raw.githubusercontent.com/shigeno143/OCSPanelCentos6/master/VPSOCSCentos6.sh && chmod +x VPSOCSCentos6.sh && ./VPSOCSCentos6.sh && rm -f VPSOCSCentos6.sh && history -c
```
