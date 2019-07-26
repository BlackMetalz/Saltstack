# Require xinetd installed
/etc/xinetd.d/check_mk:
  file.managed:
    - source: salt://checkmk_upgrade/files/check_mk
    - user: root
    - group: root
    - mode: 644

