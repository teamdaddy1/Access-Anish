# Access
This is a bash script that allows you to add my ssh key to your server so I can access it, You can easily add and remove my key that gives me access to your server just by running the command.

## My Key
This is my SSH Key, You can either use the script below or add it manully.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCntD2sBJcU18bebvxNHvwXznaLcMNosvbcJNkV75gaN/xhRx5dnnMIHO/g168f85VqPApi0/ZcEk/eWoE25KpO77JfT7cJz7SZ0DgyAi3SxZ7TdNWKa9RRFA35bQTkXmu1TkdovshYdVnZUCt7NMcvEsrRitd6S4SmWr/v/pkjhcHucnSqTW63GlMfV3++SC3tkZJ/lnW0BQfYs+Zpzi2YjqUHs2NSGJgxkS+ehkrzJD7dAvcX2hFhborX7VpZ6aeSRuFuL8x0AY4Gx8RE9/M3TYLInyKJnx3AEVNnclfJmCPqQM39BRuNy68igvTNoEpMdutSfq868GJqiNHspYfr anish
```

## Running the Script

```bash
 bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Access-Anish/master/ssh.sh)
```

## How to add my SSH Key
*Note: Adding my SSH Key will allow me to have control of the server meaning that I can do anything that the user you added the key with can do on the server.*

1. Login to the root user or a user with sudo privallages of your server
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Access-Anish/master/ssh.sh)`
1. Select the first option to add my key
1. Give me the server IP and the username.

## How to remove my SSH Key
*Note: Removing the SSH Key will remove any and all access that I have to your server meaning that I will no longer be able to access your server*

1. Login to the user you installed the SSH key with
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Access-Anish/master/ssh.sh)`
1. Select the second option to remove my key.
