# Instalando imagem do ubuntu 16.04
FROM ubuntu:16.04

# Instalando dependencias
RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Pegando a chave GPG do docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && apt-key fingerprint 0EBFCD88

# Adicinando repositorio do docker e do compose
RUN curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Instalando o Docker CE
RUN apt-get update && apt-get install -y docker-ce

CMD docker --version && docker-compose --version
