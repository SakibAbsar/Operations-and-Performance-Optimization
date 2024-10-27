
#!/bin/bash
# Log checker script

LOG_DIR="/var/log"
ERROR_COUNT=$(grep -i "error" $LOG_DIR/* | wc -l)
echo "Total errors found: $ERROR_COUNT"
