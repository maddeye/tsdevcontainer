# Example container used in the launch.json
# use -e CACHE=true to use cache folder

FROM node:15.7.0-alpine3.10

RUN mkdir /tmp/node_modules

WORKDIR /app

# You can start the container with extra arguments
ENTRYPOINT [ "" ]

# or without
CMD ["npm install && npm run start"]