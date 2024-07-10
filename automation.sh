# #!/bin/bash
terraform init
terraform plan
terraform apply --auto-approve
JENKINS_IP=$(terraform output -raw jenkins_public_ip)

# Path to the Ansible inventory file
INVENTORY_FILE="/home/rajesh/news/gamemano/hosts"

# Update the inventory file
echo "[jenkins]" > $INVENTORY_FILE
echo "$JENKINS_IP ansible_ssh_private_key_file=/home/rajesh/Downloads/testing.pem ansible_user=ec2-user" >> $INVENTORY_FILE

echo "Waiting for jenkins server to come UP"
sleep 250
# Run the Ansible playbook to install Jenkins and Docker
ansible-playbook -i $INVENTORY_FILE install_jenkins.yml
