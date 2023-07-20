#!/bin/bash
PATH=/home/ec2-user/logs

DATE=$(/usr/bin/date +%F)
LOG_FILE="$DATE.log"
INPUT=$(/usr/bin/find /home/ec2-user/logs -name "*.log"  -type f -mtime +14)

while IFS=read line;
do
    echo "delteing log file: $line" &>>$LOG_FILE 
    rm -rf $line

done <<<"$INPUT" 