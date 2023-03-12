Usually, we perform some steps to delete temp files. such as,
1) Clear temp file with disk cleanup and,
2) Clear other temp files from different locations, such as,
C:\Windows\Temp
C:\Windows\Prefetch
C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp
3) Delete data from recycle bin, etc.

Deleting the data is unlikely to free up more than several hundred megabytes at most. Deleting this much data manually, takes some time and the most it is require lots of manual intervention. So, to avoid this issue, Lets create a utility. Through this utility, we do not require any manual intervention, and it will delete all the data from the above-mentioned locations, perform disk cleanup and also clears recycle bin. Also, this utility will not take much time, I mean its hardly will take 2 -3 sec to run.

Steps to perform to execute utility:
Step 1: Download the utility.
Step 2: Right click on this file and click on ‘Run with powershell’ and launch it.

Note:
Note: Please note that the path below has the symbol '*', which denotes 'All'. It might give you the error, cause here basically your system's username will come. Hence, carefully review the path and replace it in the code.

C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp

Recycle bin data deletions:
If you want to delete only specific files on recycle bin, just mentioned those using -exclude in the code.


Get-ChildItem: Retrieves the specified items and their children items from one or more locations.

ErrorAction SilentlyContinue:  The error message "PermissionDenied to the SECURITY hive" is suppressed by this command.

Cleanmgr: Removes unused files from the hard drive of your computer. Temp files, Internet files, downloaded files, and Recycle Bin files can all be cleared using command-line parameters.

/sagerun:n: If you use the /sageset option, it executes the tasks that are provided and allocated to the n number. The chosen profile is applied to each drive after the computer's drives have been listed.
