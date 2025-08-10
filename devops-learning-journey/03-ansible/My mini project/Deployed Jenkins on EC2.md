## 🚀 Deployed Jenkins on an AWS EC2 instance as part of my DevOps learning journey! 

✅ Deployed an AWS EC2 instance and installed Ansible
- To Install ansible used below commands
  ```
  sudo apt update  # To update all the packages
  sudo apt install ansible
  ```
✅ Then created an inventory file to let my machine know where to install the application.
  ```
  [ec2]
  ec2-public-ip ansible_user=ubuntu ansible_ssh_private_key_file=/path/to/key.pem ansible_python_interpreter=/usr/bin/python3
  ```
### Explanation of each part
- [ec2] → Group name. You can call it anything ([jenkins_server], [prod], etc.).
- YOUR-EC2-PUBLIC-IP → Replace with your EC2’s public IP (e.g., 54.210.123.45).
- ansible_user=ubuntu → The default SSH user for Ubuntu AMIs. For Amazon Linux, it’s usually ec2-user.
- ansible_ssh_private_key_file=~/.ssh/mykey.pem → Path to your .pem key file used for SSH.
- ansible_python_interpreter=/usr/bin/python3 → Tells Ansible to use Python 3 on the remote EC2.

✅ Written .YAML playbook and executed it on the instance to deploy the Jenkins on cloud. (see Jenkins.yaml playbook for code)
<img width="1107" height="451" alt="{9B6BF1A9-6BB5-4426-8AC5-66BE82DD62FE}" src="https://github.com/user-attachments/assets/fe366a4c-6662-451f-a190-783064c051fa" />

✅ Configured security groups for external access on port 8080 

✅ Tried to access https://ec2-plublic-ip:8080, installed the required plugins provided the details to sign up the Jenkins account.
<img width="1354" height="681" alt="{D3E5BB04-466E-429C-869F-5D5213420DCF}" src="https://github.com/user-attachments/assets/77c1aa71-d435-473d-acb0-d8ca641d45f5" />
