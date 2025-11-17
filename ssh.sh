#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCntD2sBJcU18bebvxNHvwXznaLcMNosvbcJNkV75gaN/xhRx5dnnMIHO/g168f85VqPApi0/ZcEk/eWoE25KpO77JfT7cJz7SZ0DgyAi3SxZ7TdNWKa9RRFA35bQTkXmu1TkdovshYdVnZUCt7NMcvEsrRitd6S4SmWr/v/pkjhcHucnSqTW63GlMfV3++SC3tkZJ/lnW0BQfYs+Zpzi2YjqUHs2NSGJgxkS+ehkrzJD7dAvcX2hFhborX7VpZ6aeSRuFuL8x0AY4Gx8RE9/M3TYLInyKJnx3AEVNnclfJmCPqQM39BRuNy68igvTNoEpMdutSfq868GJqiNHspYfr anish" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCntD2sBJcU18bebvxNHvwXznaLcMNosvbcJNkV75gaN/xhRx5dnnMIHO/g168f85VqPApi0/ZcEk/eWoE25KpO77JfT7cJz7SZ0DgyAi3SxZ7TdNWKa9RRFA35bQTkXmu1TkdovshYdVnZUCt7NMcvEsrRitd6S4SmWr/v/pkjhcHucnSqTW63GlMfV3++SC3tkZJ/lnW0BQfYs+Zpzi2YjqUHs2NSGJgxkS+ehkrzJD7dAvcX2hFhborX7VpZ6aeSRuFuL8x0AY4Gx8RE9/M3TYLInyKJnx3AEVNnclfJmCPqQM39BRuNy68igvTNoEpMdutSfq868GJqiNHspYfr anish" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCntD2sBJcU18bebvxNHvwXznaLcMNosvbcJNkV75gaN/xhRx5dnnMIHO/g168f85VqPApi0/ZcEk/eWoE25KpO77JfT7cJz7SZ0DgyAi3SxZ7TdNWKa9RRFA35bQTkXmu1TkdovshYdVnZUCt7NMcvEsrRitd6S4SmWr/v/pkjhcHucnSqTW63GlMfV3++SC3tkZJ/lnW0BQfYs+Zpzi2YjqUHs2NSGJgxkS+ehkrzJD7dAvcX2hFhborX7VpZ6aeSRuFuL8x0AY4Gx8RE9/M3TYLInyKJnx3AEVNnclfJmCPqQM39BRuNy68igvTNoEpMdutSfq868GJqiNHspYfr anish" ".ssh/authorized_keys" -s ; then
    sed -i '/anish/d' .ssh/authorized_keys
    echo "Key sucessfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
