# Start an infinite loop
while ($true) {

    git fetch origin main

    git pull origin main

    # Get the current date and time, formatted as 'yyyy-MM-dd_HH-mm-ss'
    $currentDateTime = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

    # Generate the commit message using the current date and time
    $commitMessage = "Automated commit - $currentDateTime"

    # Add all changes to the staging area
    git add .

    # Commit the changes with the timestamped commit message
    git commit -m $commitMessage

    # Push the changes to the remote repository
    git push

    # Wait for 1 minute (60 seconds)
    Start-Sleep -Seconds 60
}
