# vps-ansible

## Description
Ansible playbooks and roles for automated VPS provisioning and configuration management.

## Project Structure
```
vps-ansible/
├── inventory/            # Inventory files for different environments
|   ├── group_vars/       # Group-level variables
|   └── host_vars/        # Host-level variables
├── playbooks/            # Main playbook files
├── roles/                # Reusable Ansible roles
|   ├── files/            # Static files for deployment
|   └── templates/        # Jinja2 templates
└── ansible.cfg           # Ansible configuration
```

## Requirements
- Docker and Docker Compose
- SSH access to target VPS

## Installation
```bash
git clone https://github.com/harrinsonmb/vps-ansible.git
cd vps-ansible
docker compose up -d
```

## Usage
```bash
./ansible-playbook.sh playbooks/vps.yml
```

## License
MIT
