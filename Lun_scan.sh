#!/bin/bash
##########################################################################
#
# NAME
#       lun_scan.sh - script to scan for new LUNs
#
# USAGE
#       no arguments available
#
# DESCRIPTION
#       script to scan for new LUNs
##########################################################################
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

for i in `ls -d /sys/class/scsi_host/host*`
do
echo "- - -" > $i/scan
done
