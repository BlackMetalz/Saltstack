run_repo:
  cmd.run:
    - name: 'yum install -y https://centos7.iuscommunity.org/ius-release.rpm'

update_repo:
  cmd.run:
    - name: 'yum update -y'

install_python:
  cmd.run:
    - name: 'yum install -y python36u python36u-libs python36u-devel python36u-pip'

check_python:
  cmd.run:
    - name: 'python3.6 -V'

instal_pip:
  cmd.run:
    - name: 'ln -s /usr/bin/pip3.6 /usr/bin/pip'

install_virtualenv:
  cmd.run:
    - name: 'pip install virtualenv'
