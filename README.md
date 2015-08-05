# Padawan-Docker
This is a simple project to build a virtual development enviroment using docker.

# Prerequisites
You will need to download and install these tools.
* [Docker](https://docs.docker.com/installation/)
* [Docker-compose](https://docs.docker.com/compose/install/)

If you are on **Mac Os X** or **Windows** you will need to install
* [Boot2docker](https://github.com/boot2docker/boot2docker#installation)
* [VirtualBox VM](https://www.virtualbox.org/wiki/Downloads)

But there's an all in one installers for boot2docker that comes with *VirtualBox*.

# What you will have
* **Postgres 9.3** as `db` container
* **Ruby 2.2** built on `web` container
* **Rails 4.2.3** built on `web` container
* **NodeJs** built on `web` container, just for rails things

# Something extra
If you need something just extra tell us, by create a issue.
Well, if you use *imagekit* or any gem that need a **wkhtmltoimage** there's a line, on `Dockerfile`, you must uncomment to install one of its dependencies.

# Setup
It's simple, after instalation you will need to Change these files to match your project
* Dockerfile
* docker-compose.yml

# How to use
If you are using *boot2docker* start it using these command bellow. [Learn more](https://github.com/boot2docker/boot2docker#how-to-use)

		$ boot2docker init
		$ boot2docker up

To Build your containers, this will look at you docker-compose.yml.

		$ docker-compose build

Run your containers

		$ docker-compose up

Stop your containers

		$ docker-compose stop

Run a command in a new container

		$ docker-compose run <container name on docker-compose.yml> <command>

List your containers from *docker-compose.yml*

		$ docker-compose ps
		
List your all running containers

		$ docker ps

Run a command in a existing container, needs the previous command result

		$ docker exec -i -t <container id or name> <command>

# Inspiration and Thanks
This project is inspired by [Padawan-Vagrant](https://github.com/brunodles/Padawan-Vagrant).  
Thanks to [Mr Enderson](https://github.com/endersonmaia) for help me to start this project.
