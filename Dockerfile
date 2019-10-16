# TARGET: Base, install dependencies, copy files and build app
FROM node:10.16.3-jessie as base
WORKDIR /usr/app
COPY . /usr/app
RUN npm install --unsafe-perm --quiet --no-progress --production

#TARGET: Build, expose port and start command.
FROM base AS build
EXPOSE 3000
RUN ls -la
CMD [ "node", "app.js" ]
