In this article, we will discuss how to delete a temp files, recycle bin data and perform disk cleanup using powershell script in Windows. 
Windows user sometimes faced low disk space error with the error "You're running out of space on this PC. Manage storage to view usage and free up some space." When the folder gets full, this error would appear on Windows startup. When Windows prompts low disk space warning messages, you can hardly save new data, download apps, play games or install a recent Windows update. What's worse, PC performance may be affected. 
A temp directory or temporary folder is a directory on a storage medium, such as on a hard drive, used to store temporary files. Temp files often have the extension .TMP and are stored in the C:\Users\AppData\Local\Temp  and C:\Windows\Temp folder.
For example, If you’re working on a document, your word-processing app may create a temporary file to track your progress. If the app crashes, you’ll be able to recover your data from the temp file. Also, the software that created the temp file should also automatically delete temporary files from Windows when they’re no longer needed.
But when automatic removal doesn’t happen, temporary files become junk files that build up, waste storage space, and gunk up your computer. This is when it’s time to permanently delete those files from your Windows PC.

Usually, we perform some steps to delete temp files. such as,
1) Clear temp file with disk cleanup and,
2) Clear other temp files from different locations, such as,
C:\Windows\Temp
C:\Windows\Prefetch
C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp
3) Delete data from recycle bin, etc.

And, Deleting the data is unlikely to free up more than several hundred megabytes at most. Deleting this much data manually, takes some time and the most it is require lots of manual intervention. So, to avoid this issue, Lets create a utility. Through this utility, we do not require any manual intervention, and it will delete all the data from the above-mentioned locations, perform disk cleanup and also clears recycle bin. Also, this utility will not take much time, I mean its hardly will take 2 -3 sec to run.
In this article, we will discuss how to delete a temp files, recycle bin data and perform disk cleanup using powershell script in Windows. 

Approach:
1) Fetch the path from your system that needs to be get deleted
2) Set Get-ChildItem command to delete the data from the path.
3) Stop

Steps to perform to execute utility:
Step 1: DOwnload the utility.
Step 2: Right click on this file and click on ‘Run with powershell’ and launch it.

Note:
Note: Please note that the path below has the symbol '*', which denotes 'All'. It might give you the error, cause here basically your system's username will come. Hence, carefully review the path and replace it in the code.

C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp


Get-ChildItem: Retrieves the specified items and their children items from one or more locations.

ErrorAction SilentlyContinue:  The error message "PermissionDenied to the SECURITY hive" is suppressed by this command.

Cleanmgr: Removes unused files from the hard drive of your computer. Temp files, Internet files, downloaded files, and Recycle Bin files can all be cleared using command-line parameters.

/sagerun:n

If you use the /sageset option, it executes the tasks that are provided and allocated to the n number. The chosen profile is applied to each drive after the computer's drives have been listed.
