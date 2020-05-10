# Ubuntu Commands & Cheat Sheet

## Silent Boot and display generic splash screen (remove kernel messages)

Open the Grub file
<code>sudo nano /etc/default/grub</code>

Edit the following

<code>GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"</code>

<code>GRUB_CMDLINE_LINUX="quiet splash"</code>

<code>GRUB_RECORDFAIL_TIMEOUT=0</code>

Remember <code>sudo update-grub</code> to apply changes
