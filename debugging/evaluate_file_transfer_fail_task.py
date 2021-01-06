# This script will test if the version specified are failing during file transfer
# Usage: python3 evaluate_file_transfer_fail_task.py <file_transfer_not_possible_versions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_file_transfer_fail_versions(sys.argv[1])
    print(retVal)
