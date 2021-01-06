# This script will check for the correct config parameters to set to correct file permissions issue
# Usage: python3 evaluate_file_permission_config_params.py <config_params_to_correct_file_permissions file>

import sys
import subprocess
  

# USER DOES NOT HAVE TO EDIT THIS FILE

if __name__ == '__main__': 
    # TODO - confirm this argument
    retVal = confirm_file_permission_config_params(sys.argv[1])
    print(retVal)
