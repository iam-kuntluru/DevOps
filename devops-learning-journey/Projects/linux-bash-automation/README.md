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
