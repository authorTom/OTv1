# Ubuntu Commands & Cheat Sheet

## Silenting bootup

### Silent Boot and display generic splash screen (remove kernel messages)

Open the Grub file
<code>sudo nano /etc/default/grub</code>

Edit the following

<code>GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"</code>

<code>GRUB_CMDLINE_LINUX="quiet splash"</code>

<code>GRUB_RECORDFAIL_TIMEOUT=0</code>

Remember <code>sudo update-grub</code> to apply changes

### Remove Cloud Init

<code>echo 'datasource_list: [ None ]' | sudo -s tee /etc/cloud/cloud.cfg.d/90_dpkg.cfg</code>

<code>sudo apt-get purge cloud-init -y</code>

<code>sudo rm -rf /etc/cloud/; sudo rm -rf /var/lib/cloud/</code>

### Disable Message of The Day

<code>sudo touch ~/.hushlogin</code>

### Disable Pre Login Message

<code>sudo rm /etc/issue</code>

### Silent Poweroff

Edit the console-messages config file

nano /etc/sysctl.d/10-console-messages.conf

and change the following line to the values below

<code>kernel.printk = 0 4 1 7</code>
