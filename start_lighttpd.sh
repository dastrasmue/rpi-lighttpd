#!/bin/bash
docker run -d --name lighttpd -v /home/daniel/serve:/var/www/localhost/htdocs -p 80:80 dastrasmue/rpi-lighttpd
