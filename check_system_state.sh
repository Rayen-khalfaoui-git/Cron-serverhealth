#!/bin/bash

# File to store the system state
output_file="state.txt"

# Get current date and time
echo "==== Current Date and Time ====" >> $output_file
date >> $output_file
echo "" >> $output_file

# Get system uptime
echo "==== System Uptime ====" >> $output_file
uptime >> $output_file
echo "" >> $output_file

# Get resource usage (CPU, Memory)
echo "==== Resource Usage ====" >> $output_file
echo "---- CPU Usage ----" >> $output_file
top -bn1 | grep "Cpu(s)" >> $output_file
echo "" >> $output_file
echo "---- Memory Usage ----" >> $output_file
free -m >> $output_file
echo "" >> $output_file

# Get network configuration
echo "==== Network Configuration ====" >> $output_file
ifconfig >> $output_file
echo "" >> $output_file

# Confirmation message
echo "System state information has been appended to $output_file"
