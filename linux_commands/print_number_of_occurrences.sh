#!/bin/bash

# TODO: CRIO_TASK_MODULE_LINUX_COMMANDS
    # Tasks:
    # 1) Add commands to count the number of successful user logins with the string “230 Login successful” in the file vsftpd1.log. 
    #    The only output should be an integer indicating the number of occurrences. 
    #    This command should work irrespective of the current working directory.
    # 2) If there are multiple commands, either put a semicolon between the commands or write each command on a separate line
    # 3) Execute the script before submission and confirm the output

grep -c '230 Login successful' ~/workspace/QBox/logs/vsftpd1.log


