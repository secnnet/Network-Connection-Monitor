# This PowerShell script continuously checks the network connection status by pinging google.com every 10 seconds, then prints the connection status with a timestamp. The script runs indefinitely due to the 'while($true)' loop. Here's the script with added comments:

# Start an infinite loop
while($true){
    # Get the current date and time in separate variables
    $date = Get-Date -Format "yyyy-MM-dd"
    $time = Get-Date -Format "HH:mm:ss"
    
    # Check if there is a connection to google.com
    if(Test-Connection -ComputerName google.com -Quiet){
        # If there is a connection, print a message in green text with the date and time
        Write-Host "[$date $time] Network connection is up." -ForegroundColor Green
    }else{
        # If there is no connection, print a message in red text with the date and time
        Write-Host "[$date $time] Network connection is down." -ForegroundColor Red
    }
    
    # Pause for 10 seconds before running the loop again
    Start-Sleep -Seconds 10
}
