-- Add user from salt-master

```
salt adt-sys-windows-test-1-236 user.add kienlt 'win:salt@123'
```

-- Add user to group from salt-master
```
salt adt-sys-windows-test-1-236 user.addgroup kienlt Administrator
```

