## Config files to automagically install Ubuntu with preseed and configures puppet agent

Saving my work here ¯\_(ツ)_/¯

Forgot my hand \


### File locations

* /var/lib/tftpboot/ubuntu-installer/amd64/preseed.cfg
* /var/lib/tftpboot/ubuntu-installer/amd64/boot-screens/syslinux.cfg
* /etc/default/isc-dhcp-server
* /etc/dhcp/dhcpd.conf
* /var/lib/tftpboot/postinstall.sh
* /var/lib/tftpboot/firstboot

### Sources used

* http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016
* https://help.ubuntu.com/lts/installation-guide/armhf/apbs02.html
* https://askubuntu.com/questions/617558/preseed-doesnt-automatically-select-network-interface-on-ubuntu-14-04-automate
* https://help.ubuntu.com/lts/installation-guide/example-preseed.txt
* https://ubuntuforums.org/showthread.php?t=1977570
* http://www.50ply.com/blog/2012/07/16/automating-debian-installs-with-preseed-and-puppet/
* https://stackoverflow.com/questions/2500436/how-does-cat-eof-work-in-bash
