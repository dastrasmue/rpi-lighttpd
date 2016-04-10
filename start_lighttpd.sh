#!/bin/bash
docker run -d --name lighttpd --restart=always -v /home/daniel/serve:/var/www/localhost/htdocs -p 81:80 dastrasmue/rpi-lighttpd
