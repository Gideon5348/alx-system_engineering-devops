0x0F. Load balancer

File: 0-custom_http_response_header
In this first task you need to configure web-02 to be identical to web-01. Fortunately, you built a Bash script during your web server project, and they’ll now come in handy to easily configure web-02. Remember, always try to automate your work!

Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works. More in the coming tasks.

Requirements:
    Configured Nginx so that its HTTP response contains a custom header (on web-01 and web-02)
        The name of the custom HTTP header must be X-Served-By
        The value of the custom HTTP header must be the hostname of the server Nginx is running on
    Wrote 0-custom_http_response_header so that it configured a brand new Ubuntu machine to the requirements asked in this task
    Ignore SC2154 for shellcheck

File: 1-install_load_balancer
Install and configure HAproxy on your lb-01 server.

Requirements:
    Configured HAproxy so that it send traffic to web-01 and web-02
    Distributed requests using a roundrobin algorithm
    Made sure that HAproxy can be managed via an init script
    Made sure that your servers are configures with the right hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.
    A Bash script that configures a new Ubuntu machine to respect above requirements


File: 2-puppet_custom_http_response_header.pp
Just as in task #0, we’d like you to automate the task of creating a custom HTTP header response, but with Puppet.

    The name of the custom HTTP header must be X-Served-By
    The value of the custom HTTP header must be the hostname of the server Nginx is running on
    Wrote 2-puppet_custom_http_response_header.pp so that it configures a brand new Ubuntu machine to the requirements asked in this task