# gamemano
Table of Contents
```
All Done By automation using Bash Script, Terraform and Ansible
```
Prerequisites:- 

Before starting, ensure you have the following:
```
Setting Up the Network using terraform
Provisioning Remote Machines using terraform
Configuring the Jenkins using Ansible
Execute Bash Script
Clean UP 
```

1. Prerequisites

Before starting, ensure you have the following:-

- AWS Account: Access to an AWS account with the necessary permissions.

- Terraform: Installed on your local machine. 
  - Installation Guide for terraform:-
```
  https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```

- AWS CLI: Installed and configured on your local machine.
  - Installation Guide for AWS CLI:-
```
  https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```
- Key Pair: An existing SSH key pair in your AWS account for accessing EC2 instances.


2. Setting Up the Network
```
Create VPC, Subnet, Internet Gateway, Route Tables 
```
Mentioned all configuration in `vpc.tf`


3. Provisioning Remote Machines
```
Create SG, Jenkins Server
```
Mentioned all configuration in `main.tf`

4. Ansible
```
Install Jenkins, Docker and ansible using playbook
```
Mentioned all configuration in `main.tf`

5. Now only to run automation script
```
chmod +x automation.sh
    or
bash automation.sh
```
Make sure in script your inventory and key path should be correct

All things deploy and update inventery file. It will excute infra and ansible also.
```

6. We Setup all infra side, Now Setup Jenkins Server

```
Create Pipeline and
'GitHub hook trigger for GITScm polling' add this parameter.

And In github repository create webhook also.
- http://3.235.253.147:8080/github-webook
```


7. We have setup all things
```
When code changes pipeline automatically trigger
