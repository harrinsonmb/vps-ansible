# vps-ansible

## Description
Ansible playbooks and roles for automated VPS provisioning and configuration management.

> [!WARNING]
> This project is provided for educational and convenience purposes only.
> It is a personal project created by an enthusiast, and **it is not intended as a substitute for professional security practices**.
> 
> While it includes basic configurations for fail2ban, VSFTPD, Docker, iptables, and SSH hardening, it **does not guarantee full server security**. Use at your own risk. Always review and test configurations before deploying on a production server.

> [!NOTE]
> This configuration has been tested on an [OVHcloud VPS](https://www.ovhcloud.com/es-es/vps/) `VPS-1` tier with Debian 13, so you may encounter different behavior with other VPS providers or Linux distributions.

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
