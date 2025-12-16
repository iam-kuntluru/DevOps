# Linux Automation using Bash and Cron

## Overview
This project demonstrates Linux system administration automation using Bash scripts and cron jobs. 
It automates user management, permission handling, and system resource monitoring.

## Features
- Automated Linux user creation and deletion
- File and directory permission management
- CPU, memory, and disk usage monitoring
- Scheduled monitoring using cron jobs

## Tools Used
- Bash Shell Scripting
- Cron
- Linux Utilities (useradd, chmod, df, free, uptime)

## Project Structure
- `scripts/` : Contains automation scripts
- `cron/` : Cron job configuration examples
- `sample-output/` : Sample system monitoring output

## How to Run
```bash

chmod +x scripts/*.sh
sudo ./scripts/user_management.sh add testuser
./scripts/system_monitor.sh
```

## Implementation

## 🔹 STEP 1: Create project workspace
```
mkdir linux-bash-automation
cd linux-bash-automation
```
## 🔹 STEP 2: Create user management script
```
cd scripts
nano user_management.sh
```
```
#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

ACTION=$1
USERNAME=$2

case $ACTION in
  add)
    useradd $USERNAME
    echo "User $USERNAME created"
    ;;
  delete)
    userdel -r $USERNAME
    echo "User $USERNAME deleted"
    ;;
  *)
    echo "Usage: $0 {add|delete} username"
    ;;
esac
```
### Make executable:
```
chmod +x user_management.sh
```

### Test:
```
sudo ./user_management.sh add testuser
sudo ./user_management.sh delete testuser
```

## 🔹 STEP 3: Create permission management script
```
nano permission_management.sh
```
```
#!/usr/bin/env bash

FILE=$1
PERMISSION=$2

if [ $# -ne 2 ]; then
  echo "Usage: $0 filename permission"
  exit 1
fi

chmod $PERMISSION $FILE
echo "Permission $PERMISSION applied to $FILE"
```

### Make executable:
```
chmod +x permission_management.sh
```

### Test:
```
touch test.txt
./permission_management.sh test.txt 644
ls -l test.txt
```

## 🔹 STEP 4: Create system monitoring script
```
nano system_monitor.sh
```

```

#!/usr/bin/env bash

REPORT="../sample-output/example_system_report.txt"

{
  echo "System Monitoring Report (Sample)"
  echo "Generated on: $(date)"
  echo "-------------------------------"
  echo "CPU Load:"
  uptime
  echo
  echo "Memory Usage:"
  free -h
  echo
  echo "Disk Usage:"
  df -h
} 
```

### Make executable:
```
chmod +x system_monitor.sh
```

### Run once:
```
./system_monitor.sh
```
🔹 STEP 7: Create cron configuration (NOT live cron)
```
cd ../cron
nano system_monitor_cron.txt
```

```
0 9 * * * /home/ubuntu/linux-bash-automation/scripts/system_monitor.sh >> /home/ubuntu/system_report.log
```
