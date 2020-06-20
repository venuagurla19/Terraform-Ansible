# Understanding Terraform with Ansible

Code that accompanies _Understanding Terraform with Ansible_ Medium post.

## Setup
Download and install Terraform
```
terraform --version
```
Install Ansible
```
python3 -m venv env-uta
source env-uta/bin/activate
pip install ansible ansible-lint
```
Add your aws credentials to `~/.aws/credentials`
```
aws configure
```
Generate an SSH key
```
ssh-keygen -t rsa -b 4096 -N '' -C "tf_ansible" -f /tmp/nginx-id_rsa
```
Copy `example.tfvars` to `terraform.tfvars` and fill in values.

## Run
Initialize Terraform
```
terraform init
```
Always good to validate
```
terraform validate
ansible-lint playbooks/nginx_demo.yml
```
Apply, but before you type "yes" in the prompt, really take the time to review the plan. This will create real resources and could cost money.
```
terraform apply
```
If successful, you will see the output `nginx_instance_ip`

Navigate to that IP on port 8000 and you should see the nginx welcome banner!

Destroy the infrastructure.
```
terraform destroy
```
