#!/bin/bash
## Script to monitor system load, and add it to file /var/log/system-load

uptime | awk ' BEGIN {FS=","} {print $3 $4 $5}' >> /var/log/system-load
