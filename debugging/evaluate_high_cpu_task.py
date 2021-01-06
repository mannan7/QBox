# This script will test if the version specified for high CPU issue is correct
# Usage: python3 evaluate_high_cpu_task.py <high_cpu_usage_versions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_high_cpu_usage_versions(sys.argv[1])
    print(retVal)
