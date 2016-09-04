# Raspberry Pi - lighttpd Docker image

This is a fork of sebp/lighttpd (https://github.com/spujadas/lighttpd-docker) to make this docker image of a lighttpd server running on a raspberry pi. Alpine is used as a base image to ensure the smallest docker image size possible.


Security, speed, compliance, and flexibility -- all of these describe [lighttpd](http://www.lighttpd.net/)

### Contents

 - Usage
	 - Start a container with Docker
	 - Start a container with Docker Compose
 - Build
	 - Build with Docker
	 - Build with Docker Compose
 - About

## Usage

In the instructions that follow, replace `<home-directory>` with the path of the local directory you want to serve content from, and `<http-port>` with the HTTP port you want the HTTP server to serve content to (e.g. `80` for the standard HTTP port if not already in use on the host).

### Start a container with Docker

	$ sudo docker run --rm -t -v <home-directory>:/var/www/localhost/htdocs -p <http-port>:80 dastrasmue/rpi-lighttpd:v2

### Start a container with Docker Compose

Add the following lines in an existing or a new `docker-compose.yml` file:

	lighttpd:
	  image: dastrasmue/rpi-lighttpd:v2
	  volumes:
	    - <home-directory>:/var/www/localhost/htdocs
	  ports:
	    - "<http-port>:80"

Then start a lighttpd container with:

	$ sudo docker-compose up


## Build

First clone or download the [dastrasmue/rpi-lighttpd](https://github.com/dastrasmue/rpi-lighttpd) GitHub repository, open a shell in the newly created `rpi-lighttpd` directory, then build the image and run a container using Docker or Docker Compose, as explained below.

### Build with Docker

This command will build the image:

	$ sudo docker build .

### Build with Docker Compose

Build the image with this command:

	$ sudo docker-compose build

## About

Written by [Sébastien Pujadas](http://pujadas.net), released under the [MIT license](http://opensource.org/licenses/MIT).
