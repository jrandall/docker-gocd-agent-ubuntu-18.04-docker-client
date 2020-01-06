ARG GOCD_VERSION=v18.9.0
ARG UID=1000
ARG GID=1000
FROM jrandall/gocd-agent-ubuntu-18.04:${GOCD_VERSION}_${UID}_${GID}
ARG DOCKERGID=999

RUN \
  groupadd -g ${DOCKERGID} docker && \ 
  adduser go docker && \
  curl --fail --location --silent --show-error "https://download.docker.com/linux/static/stable/x86_64/docker-19.03.5.tgz" | tar zxO docker/docker > /usr/bin/docker
