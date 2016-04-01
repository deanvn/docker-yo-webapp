


## Docker Yeoman Web App

Yeoman webapp and Dockerfile with some extras installed - namely [assemble](http://assemble.io/) 

### Build

This image built using the docker Yeoman base image

Build the Container:
`docker build -t <username>/yo-web-app .`

### Usage

Inspect your containers environment
`docker run -it -p 9000:9000 -p 35729:35729 -d -v $(pwd)/app:/src/app <username>/yo-web-app`

#### Development

Develop on an existing yeoman project or by customizing the [boilerplate](https://github.com/deanvn/docker-yo-boilerplate)

`docker run -it -p 9000:9000 -p 35729:35729 -d -v $(pwd)/app:/src/app --name yo-web-app <username>/yo-web-app gulp serve`

Added an new template file to your code? Run gulp assemble in the container:
`docker exec -it yo-web-app gulp assemble`

#### Build

Build a Distribution
`docker run -it --rm -v $(pwd)/app:/src/app -v $(pwd)/dist:/src/dist <username>/yo-web-app gulp build`

#### Troubleshooting
Troubleshooting or need to run another command in the shell of the running container
`docker exec -it yo-web-app /bin/bash`


