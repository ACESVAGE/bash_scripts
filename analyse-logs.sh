
#!/usr/bin/env bash
#A simple bash script to anlayse CRITICAL, ERRORS in log files

echo "Analysis log files"
sleep 1
echo "======================================================"

sleep 1
echo -e "\nList of log files updated in the last 24 hours"
sleep 2
find . -name "*.log" -mtime -1

echo -e "\nSearvhing Error logs in application.log file"
sleep 2
grep "ERROR" application.log

echo -e "\nNumber of errors found in application.log file"
sleep 2
grep -c "ERROR" application.log

echo -e "\nSearching FATAL log errors in application.log file"
sleep 2
grep "FATAL" application.log

echo -e "\nNumner of fatal log erros found in application.log file"
sleep 2
grep -c "FATAL" application.log

echo -e "\nSearching for CRITICAL log errors in application.log file"
sleep 2
grep "CRITICAL" application.log

echo -e "\nNumber of CRITICAL log errors in application.log file"
sleep 2 
grep -c "CRITICAL" application.log



