#!/bin/bash
## Script to monitor system load, and add it to file /var/log/system-load

uptime >> /var/log/system-load
