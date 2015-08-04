# Padawan-Docker
This is a simple project to build a virtual development enviroment using docker.

# How to use
It's simple: 
* Download docker and docker-compose
* Download VirtualBox and Boot2Docker, only if you on mac or windows
* Put these files on your project
* Change these files to match your project
	* Dockerfile
	* docker-compose.yml

# What you will have
* **Postgres 9.3** as `db` container
* **Ruby 2.2** built on `web` container
* **Rails 4.2.3** built on `web` container
* **NodeJs** built on `web` container, just for rails things

# Something extra
If you need something just extra tell us, by create a issue.
Well, if you use *imagekit* or any gem that need a **wkhtmltoimage** there's a line, on `Dockerfile`, you must uncomment to install one of its dependencies.

# Inspiration and Thanks
This project is inspired by [Padawan-Vagrant](https://github.com/brunodles/Padawan-Vagrant).  
Thanks to [Mr Enderson](https://github.com/endersonmaia) for help me to start this project.

