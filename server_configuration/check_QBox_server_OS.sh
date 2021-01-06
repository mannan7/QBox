#!/bin/bash

# Usage: ./check_QBox_server_OS.sh /etc/os-release

if test $# -ne 1 
   then
   echo "Incorrect invocation of script. Usage: ./check_QBox_server_OS.sh /etc/os-release"
   exit 1  # Failure
fi

# Required minimum configuration
requiredOS1="ubuntu"           # ubuntu
requiredOS2="Ubuntu"           # Ubuntu
requiredUbuntuVersion=18       # Ubuntu verison 18.0

# Check if the Linux OS is Ubuntu
# TODO: CRIO_TASK_MODULE_SERVER_CONFIGURATION
    # Tasks:
    # 1) Add the line to populate the variable "linuxType" with the OS type.
    # 2) Start the expression to populate the variable with "cat $1" which is the command line filename input. Check the Usage above. 
linuxType=`awk -F '=' '/^ID/ {print $2}' /etc/os-release | head -n 1`

if [ "$linuxType" = "$requiredOS1" ] || [ "$linuxType" = "$requiredOS2" ]
   then
   echo "OS is $requiredOS2 which is required for QBox"
else 
   echo "Error: OS is $linuxType which cannot be used for QBox"
   exit 1  # Failure
fi

# Check if Ubuntu Version is >= 18.0
# TODO: CRIO_TASK_MODULE_SERVER_CONFIGURATION
    # Tasks:
    # 1) Add the line to populate the variable "ubuntuVersion" with the OS type.
    # 2) Start the expression to populate the variable with "cat $1" which is the command line filename input. Check the Usage above. 
    # 3) Bash script can only do integer arithmetic. Include additional handling needed to strip the decimal part
    # 4) Execute the script before submission and confirm the output 
ubuntuVersion=`cat $1 | grep -m1 "PRETTY_NAME" | awk '{print $2} ' `
ubuntuVersion=${ubuntuVersion%.*}
ubuntuVersion=${ubuntuVersion%.*}

if test $ubuntuVersion -ge $requiredUbuntuVersion
   then
   echo "Ubuntu version is $ubuntuVersion which is sufficient for QBox"
else 
   echo "Error: Ubuntu version is $ubuntuVersion which is insufficient for QBox"
   exit 1  # Failure
fi

exit 0 # Success

