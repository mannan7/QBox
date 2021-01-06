#!/bin/bash

# Usage: ./check_QBox_server_memory.sh /proc/meminfo

if test $# -ne 1 
   then
   echo "Incorrect invocation of script. Usage: ./check_QBox_server_memory.sh /proc/meminfo"
   exit 1  # Failure
fi

# Required minimum configuration
requiredMemInKB=2000000        # 2 GB RAM, ideally it can be 2097152 KB

# Check if the server has total RAM/memory >= 2 GB
# TODO: CRIO_TASK_MODULE_SERVER_CONFIGURATION
    # Tasks:
    # 1) Add the line to populate the variable "totalMemInKB" with the value of the Total memory in KB.
    # 2) Linux commands can be placed within the `` when assigning the output to a variable. 
    #    E.g. totalMemInKB=`<bash command>`
    # 3) Start the expression to populate the variable with "cat $1" which is the command line filename input. Check the Usage above. 
    # 4) Execute the script before submission and confirm the output
totalMemInKB=`cat $1 | awk '/^MemTotal:/{print $2}'`
if test $totalMemInKB -ge $requiredMemInKB
   then
   echo "Total Memory of $totalMemInKB KB is sufficient for QBox"
else 
   echo "Error: Total Memory of $totalMemInKB KB is insufficient for QBox"
   exit 1  # Failure
fi

exit 0 # Success
