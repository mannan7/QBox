#!/bin/bash

# Execution: ./check_QBox_server_disk_space.sh

# Required minimum configuration
requiredDiskSpaceInMB=4096     # 4 GB Disk Space

# Check if the server has at least 4 GB of disk space free
# TODO: CRIO_TASK_MODULE_SERVER_CONFIGURATION
    # Tasks:
    # 1) Add the line to populate the variable "diskSpaceInMB" with the disk space in MB.
    #    Note that the filesystem name may be different on different servers, using that name may not work on all servers.
    #    Note that the Disk Space mounted at "/" is the disk space available for QBox.
    # 2) Execute the script before submission and confirm the output

diskSpaceInMB=`df --output=size / | sed 1d`

if test $diskSpaceInMB -ge $requiredDiskSpaceInMB
   then
   echo "Free Disk Space of $diskSpaceInMB MB is sufficient for QBox"
else 
   echo "Error: Free Disk Space of $diskSpaceInMB MB is insufficient for QBox"
   exit 1  # Failure
fi

exit 0 # Success
