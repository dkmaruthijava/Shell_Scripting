#!/bin/bash

df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6 " "$1}'
df -hT | grep -vE 'tmpfs|Filesystem' | awk '{print $6}' | cut -d "%" -f1
sudo yum install postfix cyrus-sasl-plain mailx
systemctl restart postfix
systemctl enable postfix