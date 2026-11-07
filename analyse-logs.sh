#!/usr/bin/env bash
#A simple bash script to anlayse CRITICAL, ERRORS in log files

echo "Analysis log files"
sleep 1
echo "======================================================"

slee 1
echo "List of log files updated in the last 24 hours"
sleep 2
find . -name "*.log" -mtime -1

echo "Searvhing Error logs in application.log file"
sleep 2
grep "ERROR" application.log

echo "Number of errors found in application.log file"
sleep 2
grep -c "ERROR" application.log

echo "Searching FATAL log errors in application.log file"
sleep 2
grep "FATAL" application.log

echo "Numner of fatal log erros found in application.log file"
sleep 2
grep -c "FATAL" application.log

echo "Searching for CRITICAL log errors in application.log file"
sleep 2
grep "CRITICAL" application.log

echo "Number of CRITICAL log errors in application.log file"
sleep 2 
grep -c "CRITICAL" application.log

grep -c "CRITICAL" application.log

