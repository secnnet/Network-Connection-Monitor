# Network Connection Monitor

This PowerShell script is designed to monitor your network connection status by continuously pinging google.com every 10 seconds. It will print the connection status along with a timestamp, indicating whether the network connection is up or down. The script will run indefinitely due to the 'while($true)' loop. Here's a brief summary of the script's functionality:

It starts an infinite loop using 'while($true)'.
It obtains the current date and time and stores them in separate variables.
It checks for a connection to google.com using the 'Test-Connection' cmdlet.
If there's a connection, it prints a message in green text with the date and time stating that the network connection is up.
If there's no connection, it prints a message in red text with the date and time stating that the network connection is down.
The script then pauses for 10 seconds before running the loop again. 😊 
