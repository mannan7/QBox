# This script will test if the version specified is taking up higher memory than the benchmark
# Usage: python3 evaluate_high_memory_task.py <high_memory_usage_versions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_high_memory_versions(sys.argv[1])
    print(retVal)
