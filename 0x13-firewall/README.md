Warning!
Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.

#TASKS
File: 0-block_all_incoming_traffic_but
Let’s install the ufw firewall and setup a few rules on web-01.

Requirements:

    The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it won’t be checked)
    Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
    22 (SSH)
    443 (HTTPS SSL)
    80 (HTTP)
    Share the ufw commands that you used in your answer file


File: 100-port_forwarding

Firewalls can not only filter requests, they can also forward them.

Requirements:

    Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP.
    Your answer file should be a copy of the ufw configuration file that you modified to make this happen

    My web server nginx is only listening on port 80
    netstat shows that nothing is listening on 8080