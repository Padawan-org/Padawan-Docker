# Padawan-Docker
This is a simple project to build a virtual development enviroment using docker.  
Here we will show common commands an the prerequisites for using docker, the others branches will show only expecific content.  
We've build some envoroment samples, choose one just click on a link bellow.

## Environments
The master branch is empty, just to point another branch with desired enviroment sample.  
By now we have those options:
* [Rails](https://github.com/Padawan-org/Padawan-Docker/tree/rails)
* [NodeJs](https://github.com/Padawan-org/Padawan-Docker/tree/nodeJs)
* [ExpressJs](https://github.com/Padawan-org/Padawan-Docker/tree/express)

# Prerequisites
You will need to download and install these tools.
* [Docker](https://docs.docker.com/installation/)
* [Docker-compose](https://docs.docker.com/compose/install/)

If you are on **Mac Os X** or **Windows** you will need to install
* [Boot2docker](https://github.com/boot2docker/boot2docker#installation)
* [VirtualBox VM](https://www.virtualbox.org/wiki/Downloads)

But there's an all in one installers for boot2docker that comes with *VirtualBox*.

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

# Useful Aliases
I use these aliases on my machine, just put then in your bashrc.

		alias dc='docker-compose'
		alias dcu='dc up'
		alias dcl='dc logs'
