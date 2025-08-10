
# Introduction to Ansible

## What is Ansible ?

Ansible is an open source IT automation engine that automates 
- provisioning 
- configuration management
- application deployment
- orchestration

and many other IT processes. It is free to use, and the project benefits from the experience and intelligence of its thousands of contributors.

## How Ansible works ?

Ansible is agentless in nature, which means you don't need install any software on the manage nodes.

For automating Linux and Windows, Ansible connects to managed nodes and pushes out small programs—called Ansible modules—to them. These programs are written to be resource models of the desired state of the system. Ansible then executes these modules (over SSH by default), and removes them when finished. These modules are designed to be idempotent when possible, so that they only make changes to a system when necessary.

For automating network devices and other IT appliances where modules cannot be executed, Ansible runs on the control node. Since Ansible is agentless, it can still communicate with devices without requiring an application or service to be installed on the managed node.



# Configuration Mangement:-
- Means keeping infrastructure consist and defined through code. I use Ansible to automate server steup, package installation, user management and file configurations. It makes demployments repeatable, traceable and fast.

  
## Example scenario:-
System admin has to configure 100s of serverds each with different OS like Ubuntu, CentOS, Windows Tasks include updating OS, security patches, default installations like git, database on servers.

### Issue:- 
- Doing this manually on every server is difficult. Hence scripts are used, powershell scripts for Windows machines, other shells scripts  for Linux machines. Even in Linux machines, scripts varies based Linux flavours and type of scripts. This script will then over all serves to perform configuration tasks.
- With cloud and micro services architecture adapting number of servers have increased further.
- Hence, even scripting approach is not very efficient. This led to concept of configuration management. Various tools used for configuration management. Puppet and chef were pioneering tools while Ansible, developed by RedHat is most popular.
