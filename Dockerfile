FROM python:3.11-slim

# Dependencias básicas
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ssh \
        git \
        curl \
        bash \
        build-essential \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Instalar Ansible + ansible-lint
RUN pip install --no-cache-dir \
    ansible==9.* \
    ansible-lint \
    jmespath \
    docker \
    requests

# Instalar colecciones esenciales
RUN ansible-galaxy collection install \
      community.general \
      community.docker \
      ansible.posix

# Directorio de trabajo
WORKDIR /ansible

# Entry por defecto (se puede sobreescribir)
ENTRYPOINT ["ansible-playbook"]