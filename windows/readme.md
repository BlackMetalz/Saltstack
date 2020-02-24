-- Credit: https://docs.saltstack.com/en/latest/topics/windows/windows-package-manager.html

- You have to run those command with in location /srv/salt/win  to init salt win repo
```
salt-run winrepo.genrepo
salt-run winrepo.update_git_repos
salt -G 'os:windows' pkg.refresh_db
```

Config in master: /etc/salt/master

```
file_roots:
  base:
    - /srv/salt/states
```

- After config you can run something like this:
```
salt minion_id pkg.install chrome
```

with package come from salt-winrepo-ng
