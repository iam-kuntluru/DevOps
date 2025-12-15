# Linux Server Patching Automation using Ansible

## Overview
This project automates OS patching across multiple Ubuntu Linux servers using Ansible.  
It ensures consistent updates, reduces manual effort, and avoids configuration drift.

## Technologies Used
- Ansible
- Ubuntu Linux
- Amazon EC2
- SSH

## Architecture
- One Ansible control node
- Multiple Ubuntu managed nodes
- Agentless automation using SSH

## Features
- Automated package updates using Ansible apt module
- Centralized patch management
- Safe reboot handling
- Idempotent execution

## How to Run
1. Configure inventory file with target server IPs
2. Verify connectivity using Ansible ping module
3. Run patching playbook

## Command
```bash
ansible-playbook -i inventory/hosts playbooks/patching.yaml (yml is best practice)

