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

1. Clone the vps-ansible project:

    ```bash
    git clone https://github.com/harrinsonmb/vps-ansible.git
    cd vps-ansible
    ```

2. Copy the sample configuration file to create your own:

    ```bash
    cp inventory/host_vars/vps.sample.yml inventory/host_vars/vps.yml
    ```

3. Edit `inventory/host_vars/vps.yml` with your VPS details.

## Usage
```bash
./ansible-playbook.sh playbooks/vps.yml
```

## License
MIT
