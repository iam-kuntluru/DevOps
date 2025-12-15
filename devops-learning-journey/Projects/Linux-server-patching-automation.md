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

Control Node
|
| SSH
|

| | |
Server 1 Server 2 Server N

---

## 📁 Project Structure

linux-server-ansible/
├── inventory/
│ └── hosts
├── playbooks/
│ └── patching.yml
└── README.md



---

## ⚙️ Prerequisites
- Ubuntu Linux instances (EC2)
- SSH key-based authentication
- Ansible installed on control node
- Passwordless SSH access to managed nodes

---

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
```

## 🔑 Step 1: Inventory Configuration

The inventory file defines the target servers and SSH connection details.

**File:** `inventory/hosts`

```ini
[linux_servers]
linux-server1 ansible_host=10.0.1.101
linux-server2 ansible_host=10.0.1.102

[linux_servers:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=/home/ubuntu/mykey.pem
```

🔍 Step 2: Validate Connectivity

Before running any playbook, test connectivity:
```
ansible -i inventory/hosts linux_servers -m ping
```

Expected Output:

SUCCESS => pong


This confirms SSH connectivity and Ansible readiness.

📝 Step 3: Patching Playbook

File: playbooks/patching.yml
```
---
- name: Linux Server Patching Automation (Ubuntu)
  hosts: linux_servers
  become: yes

  tasks:
    - name: Update apt cache and upgrade packages
      apt:
        update_cache: yes
        upgrade: dist

    - name: Reboot server if required
      reboot:
        reboot_timeout: 600
```

Explanation:

update_cache: yes → Runs apt update

upgrade: dist → Safely upgrades all packages

become: yes → Runs tasks with sudo privileges

reboot → Reboots system only if required

▶️ Step 4: Execute the Playbook

Run the patching automation:
```
ansible-playbook -i inventory/hosts playbooks/patching.yml
```
✅ Step 5: Verification

Check system uptime after reboot:
```
ansible -i inventory/hosts linux_servers -a "uptime"
```

Check package upgrade history on a server:

```
cat /var/log/apt/history.log
```


