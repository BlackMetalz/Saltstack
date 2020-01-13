-- Credit: https://docs.saltstack.com/en/latest/topics/windows/windows-package-manager.html

- You have to run those command with in location /srv/salt/win  to init salt win repo
```
salt-run winrepo.update_git_repos
salt -G 'os:windows' pkg.refresh_db
```

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

pillar_roots:
  base:
    - /srv/salt-windows/pillar
```

- After config you can run something like this:
```
salt minion_id pkg.install chrome
```

with package come from salt-winrepo-ng
