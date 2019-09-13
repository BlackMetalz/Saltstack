{% if grains['os'] == 'CentOS' %}
pkg.installed:
  - pkgs:
    - epel-release
{% endif %}

install_basic_softwares:
  pkg.installed:
    - pkgs:
      - git
      - htop
      - screen
      - telnet
      - nc

