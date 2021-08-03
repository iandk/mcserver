# mcserver
Simple bash script to control a Minecraft server


## Installation
```
wget -qO /usr/local/bin/mcserver https://git.io/JtYSi && chmod +x /usr/local/bin/mcserver && mcserver install
```

Crontab
```
@reboot /usr/local/bin/mcserver start
@daily /usr/local/bin/mcserver backup

# With sync to remote server
# @daily /usr/local/bin/mcserver backup && /usr/local/bin/mcserver sync

```

## Available commands
Start minecraft server
```
mcserver start
```
Attach console
```
mcserver attach
```
Stop server
```
mcserver stop
```
Show server status
```
mcserver status
```
Backup server
```
mcserver backup
```
