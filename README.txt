Experiencing low disc space issues? what can be done to speed up the system. Almost every Windows user has this issue occasionally, and the first solution that springs to mind is to delete temporary files, perform disc cleanup, and delete recycle bin files. Although the procedure to delete those files is fairly simple, it takes a lot of time. Why not create a utility that can clean up the disc, delete all the temporary files, and remove everything from the recycle bin to avoid this issue?
 
The worst effect is caused by temporary files fragmenting the disc. If they are not removed over time, they gradually occupy more and more storage space, which could result in a lack of capacity for adding new files, expanding current files, or adding or extending virtual memory files, which slows down or even crashes computers. Your computer may slow down as the storage capacity is depleted because the computer must manage more huge files.
 
We use several methods, to speed up the system. Such as,
Step 1: Navigate to the path listed below, pick all the data, and then remove it.
C:\Windows\Temp
C:\Windows\Prefetch
C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp
 
Step 2: Do a disc cleanup and remove all unnecessary data from the computer.
Step 3: Remove recycle bin data files.

We all carry out these tasks manually, although it doesn't seem like a very difficult job. Also, it won't take long—probably not more than 10 to 15 minutes. But what if a single utility handled everything? It will complete all of the aforementioned duties with a single click. Easy, huh.

Hence, let's create a tool that can complete all of the aforementioned tasks with a single click and will not take more than 2sec's. 

Step 1: In notepad, paste the following code, then save the file with the “.ps1” extension. A file with the extension ".ps1" is a Windows powershell file.
Step 2: Simply right-click the file and select "run with powershell" to launch it.

Note: Please note that the path below has the symbol '*', which denotes 'All'. It might give you the error, cause here basically your system's username will come. Hence, carefully review the path and replace it in the code.

C:\Users\*\Recent
C:\Users\*\AppData\Local\Temp
 

Get-ChildItem: Retrieves the specified items and their children items from one or more locations.

ErrorAction SilentlyContinue:  The error message "PermissionDenied to the SECURITY hive" is suppressed by this command.

Cleanmgr: Removes unused files from the hard drive of your computer. Temp files, Internet files, downloaded files, and Recycle Bin files can all be cleared using command-line parameters.

/sagerun:n :If you use the /sageset option, it executes the tasks that are provided and allocated to the n number. The chosen profile is applied to each drive after the computer's drives have been listed.
