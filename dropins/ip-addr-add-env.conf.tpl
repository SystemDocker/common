# Configuration for the 'ip-addr-add.conf' drop-in
# 
# This is a template drop-in, you should not link to this drop-in directly.
[Service]
# Set the static IP address that you want added to the container with the netmask
Environment='IP_ADDR_ADD=169.254.254.254/32'
