# Linux Patching & Ops Automation (Ansible + Bash)

This sample project demonstrates:
- Automated **Linux patch management** across multiple servers using **Ansible**.
- **User/permission management** and **system monitoring** using **Bash** + **cron**.
- **Centralized logging** via **rsyslog** with **logrotate** policies.

> Compatible with Debian/Ubuntu (APT) and RHEL family (YUM/DNF).

## Structure
```
ansible/
  ansible.cfg
  inventory.ini
  site.yml
  roles/
    patching/tasks/main.yml
    reboot_guard/tasks/main.yml
scripts/
  user_mgmt.sh
  permissions.sh
  monitor.sh
  cron/crontab.example
logging/
  rsyslog/client.conf
  rsyslog/server.conf
  logrotate/app_logs
docs/DESIGN.md
```

## How to Run (Demo)

### Patching with Ansible
1. Install Ansible and SSH access to target hosts.
2. Edit `ansible/inventory.ini` and set your IPs and `ansible_user`.
3. Run:
   ```bash
   cd ansible
   ansible-playbook -i inventory.ini site.yml --ask-pass --ask-become-pass
   ```

### Bash Automations
- `./scripts/user_mgmt.sh --create --user alice --groups wheel --shell /bin/bash`
- `./scripts/permissions.sh scripts/desired_permissions.txt`
- `./scripts/monitor.sh` (add to cron via `scripts/cron/crontab.example`)

### Central Logging & Rotation
- Use `logging/rsyslog/client.conf` on clients (replace IP).
- Use `logging/rsyslog/server.conf` on the central log server.
- Copy `logging/logrotate/app_logs` to `/etc/logrotate.d/` as needed.

> Tweak thresholds, paths, and IPs for your environment. Test in a lab.
