#!/usr/bin/env bash
#A simple bash script to anlayse CRITICAL, ERRORS in log files
find . -name "*.log" -mtime -1

grep "ERROR" application.log
grep -c "ERROR" application.log
grep "FATAL" application.log
grep -c "FATAL" application.log
grep "CRITICAL" application.log
grep -c "CRITICAL" application.log

