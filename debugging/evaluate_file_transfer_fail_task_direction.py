# This script will test if the direction specified for failed file transfer is correct
# Usage: python3 evaluate_file_transfer_fail_task_direction.py <file_transfer_not_possible_direction file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_file_transfer_issue_direction(sys.argv[1])
    print(retVal)
