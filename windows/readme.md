-- Credit: http://terokarvinen.com/2018/control-windows-with-salt

Config in master: /etc/salt/master

```
# Location of the repo on the master:
winrepo_dir_ng: '/srv/salt/win/repo/salt-winrepo'
#
# List of git repositories to include with the local repo:
winrepo_remotes_ng:
  - https://github.com/saltstack/salt-winrepo-ng.git
  
file_roots:
  base:
    - /srv/salt-windows/salt

```

- After config you can run something like this:
```
salt minion_id pkg.install chrome
```

with package come from salt-winrepo-ng
