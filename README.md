# Padawan-Docker - Parse-Server

This project is just a copy of the [parse-server-example](https://github.com/ParsePlatform/parse-server-example)
but I made it run with docker compose, so you don't need to build an image.
You just need to change two files to put it to work.

## Set things up
You just need to go to your *parse developer console*, something like
`https://dashboard.parse.com/apps/myProject/settings/keys`, just replace `myProject`
with your project name.
There you will be able to see all **keys** for that project.
Keep that open, we will need it on the next step.

Open `docker-compose.yml`, you will be able to see something like This
```
environment:
  - DATABASE_URI=mongodb://mongodb:27017/dev
  - APP_ID=myAppId
  - MASTER_KEY=myMasterKey
  - PARSE_MOUNT=/1
```
Change `myAppId` and `myMasterKey` with your parse app **keys**, those ones that you
saw in the *parse developer console*.
There are some others **keys** and you copy all those, but we just need these
two to put it to work.

## Cloud code
You can be asking about the cloud code.
To add it you just need to create a dir `cloud` and put all your code inside of it.

## Running
To run it, is so simple just run `docker-compose up`.

Now you can be happy running you parse-server locally.
