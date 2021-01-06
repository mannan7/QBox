# This script will test if the direction specified for increased file transfer time is correct
# Usage: python3 evaluate_time_taken_task_direction.py <increased_time_taken_direction file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_time_taken_issue_direction(sys.argv[1])
    print(retVal)
