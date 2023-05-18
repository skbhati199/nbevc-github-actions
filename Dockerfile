# Container image that runs your code
FROM node:18

WORKDIR /app

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY package.json /package.json
RUN npm install -g npm
RUN npm install
RUN npm run prepare
COPY . .
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]