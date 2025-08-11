
## 🚀 Deployed Nginx on an AWS EC2 instance.

✅ Deployed an AWS EC2 instance and installed Ansible
- To Install ansible used below commands
  ```
  sudo apt update  # To update all the packages
  sudo apt install ansible
  ```
✅ Then created an inventory file to let my machine know where to install the application.
  ```
  [webserver]
  ec2-public-ip ansible_user=ubuntu ansible_ssh_private_key_file=/path/to/key.pem 
  ```

✅ Written playbook.YAML and executed it on the instance to deploy the Jenkins on cloud. (see playbook.yaml file for code)
<img width="1132" height="445" alt="{023D664D-DD68-4C74-B451-0524EBB68A7E}" src="https://github.com/user-attachments/assets/0b8d4a12-7d2e-46e3-b5f9-769515c4352d" />


✅ Configured security groups for external access on port 80 

✅ Tried to access https://ec2-plublic-ip:8080, installed the required plugins provided the details to sign up the Jenkins account.
<img width="1362" height="305" alt="{F7CB0CF9-952E-4CC5-941A-A7DA583F59FE}" src="https://github.com/user-attachments/assets/1370c59d-5229-425b-968a-78104c95c68e" />

