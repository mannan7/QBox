# This script will test if the version specified is taking more time for file transfer
# Usage: python3 evaluate_time_taken_task.py <increased_time_taken_versions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_time_taken_issue_versions(sys.argv[1])
    print(retVal)
