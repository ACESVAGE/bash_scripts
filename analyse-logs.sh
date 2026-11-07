
#!/usr/bin/env bash
#A simple bash script to anlayse CRITICAL, ERRORS in log files

LOG_DIR="Users/homepc/logs"
APP_LOG="application.log"
SYS_LOG_FILE="system.log" 
ERROR_PATTERNS=("ERROR","FATAL","CRITICAL")

echo "Analysis log files"
sleep 1
echo "======================================================"

sleep 1
echo -e "\nList of log files updated in the last 24 hours"
sleep 2
find $LOG_DIR "*.log" -mtime -1

echo -e "\nSearching Error logs in $APP_LOG"
sleep 2
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG"

echo -e "\nNumber of errors found in $APP_LOG"
sleep 2
grep -c "{ERROR_PATTERNS[0]}"  "$LOG_DIR/$APP_LOG"

echo -e "\nSearching FATAL log errors in $APP_LOG"
sleep 2
grep "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG"

echo -e "\nNumner of fatal log erros found in $APP_LOG"
sleep 2
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG"

echo -e "\nSearching for CRITICAL log errors in $APP_LOG_FILE"
sleep 2
grep "${ERROR_PATTERNS[2]}" application.log

echo -e "\nNumber of CRITICAL log errors in application.log file"
sleep 2 
grep -c "${ERROR_PATTERNS[2]}" application.log



