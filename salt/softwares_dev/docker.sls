# Note: This only works for centos. I haven't make for ubuntu yet.

remove_old_docker:
  cmd.run:
    - name: 'yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine -y'

setup_the_repository:
  cmd.run:
    - name: 'yum install -y yum-utils device-mapper-persistent-data lvm2'

setup_stable_repository:
  cmd.run:
    - name: 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'

install_docker_engine_community:
  cmd.run:
    - name: 'yum install docker-ce docker-ce-cli containerd.io -y'

docker_service:
  cmd.run:
    - name: 'service docker restart'
