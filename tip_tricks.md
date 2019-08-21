- Target minion like:  ` *aerospike-9.* `

```bash
salt -C '*aerospike-9.*' cmd.run "cat /etc/os-release"
```

- Change Salt Master:
```bash
service salt-minion stop
# Remove minion master
rm -f /etc/salt/pki/minion/minion_master.pub 
# Edit salt master in /etc/salt/minion
# Then start salt-minion again
service salt-minion start
```

In salt master accept new key. Done

- Change Salt Minion ID:
Change in `/etc/salt/minion_id`
Restart salt-minion service
Then in Salt Master
- Delete Old salt-key of minion
- Accept new salt-key of minion
