# This script will test if the version specified is creating file with incorrect permissions
# Usage: python3 evaluate_file_permission_task.py <incorrect_file_permission_versions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_file_permission_issue_versions(sys.argv[1])
    print(retVal)
