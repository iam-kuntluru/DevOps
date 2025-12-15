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


---

## ⚙️ Prerequisites
- AWS account
- Ubuntu EC2 instances
- SSH key-based authentication
- Ansible installed on control node
- All instances in the same VPC

---

## 🚀 Step 1: Create EC2 Instances

Create **three EC2 instances** in AWS:

| Instance Name | Role | OS |
|---|---|---|
| ansible-control | Control node | Ubuntu 22.04 |
| linux-server-1 | Managed node | Ubuntu 22.04 |
| linux-server-2 | Managed node | Ubuntu 22.04 |

<img width="1104" height="296" alt="{5181A549-9B0F-4A78-ABFE-F8FB3EF9B07B}" src="https://github.com/user-attachments/assets/f8eb3a06-d925-44d9-b6bd-187385ba9487" />


### EC2 Configuration
- Instance type: `t2.micro`
- Key pair: Same key for all instances
- Security group:
  - Allow SSH (port 22)
- Network: Same VPC and subnet

---

## 🔑 Step 2: Login to Control Node

From local machine:

```bash
ssh -i mykey.pem ubuntu@<control-node-public-ip>
```
## 📤 Step 3: Copy SSH Key to Control Node

From local machine:
```
scp -i mykey.pem mykey.pem ubuntu@<control-node-public-ip>:/home/ubuntu/
```

On control node:
```
chmod 400 ~/mykey.pem
```
## 🔐 Step 4: Verify SSH Access to Managed Nodes

From control node:
```
ssh -i mykey.pem ubuntu@<linux-server-1-private-ip>
ssh -i mykey.pem ubuntu@<linux-server-2-private-ip>
```
Successful login confirms SSH connectivity.

## 🧩 Step 5: Install Ansible (Control Node)
```
sudo apt update
sudo apt install ansible -y
```

Verify installation:
```
ansible --version
```

## 📂 Step 6: Create Project Structure
```
mkdir linux-server-ansible
cd linux-server-ansible

mkdir inventory playbooks
touch inventory/hosts
touch playbooks/patching.yml
```

## 🧾 Step 7: Configure Inventory File

File: inventory/hosts
```
[linux_servers]
linux-server1 ansible_host=10.0.1.101
linux-server2 ansible_host=10.0.1.102

[linux_servers:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=/home/ubuntu/mykey.pem
```
<img width="418" height="173" alt="{CFB59194-4928-4A8B-A95A-547825F7444A}" src="https://github.com/user-attachments/assets/eb054102-64de-4467-ab2b-715f6d440ede" />

## 🔍 Step 8: Test Ansible Connectivity
```
ansible -i inventory/hosts linux_servers -m ping
```

Expected output:
```
SUCCESS => pong
```
<img width="791" height="227" alt="{3A33879F-047C-4D77-951B-B1A81F22FCB2}" src="https://github.com/user-attachments/assets/355459a2-04ac-4ed4-a093-17983d8251a8" />

## 📝 Step 9: Create Patching Playbook

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
<img width="423" height="267" alt="{51F039C8-E23B-496A-89B9-D4CD6CD107F8}" src="https://github.com/user-attachments/assets/4c6f797c-86c5-4526-8863-efdff14089d0" />

## ▶️ Step 10: Execute the Playbook
```
ansible-playbook -i inventory/hosts playbooks/patching.yml
```
<img width="1111" height="393" alt="{C104E12D-AB66-449E-93BF-DCC7D1DAB99B}" src="https://github.com/user-attachments/assets/ff996afd-7d11-47ee-a0dc-60134547cf1f" />


## ✅ Step 11: Verification

Check system uptime:
```
ansible -i inventory/hosts linux_servers -a "uptime"
```
<img width="815" height="82" alt="{5F6F86BB-1032-424C-A8E9-708F4D97E68D}" src="https://github.com/user-attachments/assets/570f59d2-5c16-4dce-a918-ef1e140fd2db" />

Check package upgrade history on a server:
```
cat /var/log/apt/history.log
```
<img width="1108" height="414" alt="{3E218F2A-0A5A-47A5-B016-6D9E491F2C5A}" src="https://github.com/user-attachments/assets/92270701-fdd5-429a-b001-14e927ea2e5f" />
