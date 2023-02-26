#1# Removing recycle bin content

$Path = 'C' + ':\$Recycle.Bin'
Get-ChildItem $Path -Force -Recurse -ErrorAction SilentlyContinue |
Remove-Item -Recurse -exclude *.ini -ErrorAction SilentlyContinue
write-Host "Recycle Bin is empty."

#2# Remove Temp Files  
 
write-Host "Removing Temp" -ForegroundColor Green  
 
$Path1 = 'C' + ':\Windows\Temp' 
Get-ChildItem $Path1 -Force -Recurse -ErrorAction SilentlyContinue |
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue  
 
$Path2 = 'C' + ':\Windows\Prefetch' 
Get-ChildItem $Path2 -Force -Recurse -ErrorAction SilentlyContinue | 
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue  
 
$Path3 = 'C' + ':\Users\suraj lotankar\Recent' 
Get-ChildItem $Path3 -Force -Recurse -ErrorAction SilentlyContinue |
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue 

$Path4 = 'C' + ':\Users\SURAJL~1\AppData\Local\Temp' 
Get-ChildItem $Path4 -Force -Recurse -ErrorAction SilentlyContinue |
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue 

write-Host "removed all temp files!" -ForegroundColor Yellow  
 
#3# Running Disk Clean up Tool  
 
write-Host "Running the Windows Disk Clean up Tool" -ForegroundColor White  
 
cleanmgr /sagerun:1 | out-Null  
 
$([char]7)  
 
Sleep 3  
 
write-Host "Cleanup task complete!" -ForegroundColor Yellow  
 
Sleep 3  
 
##### End of the Script ##### 