FROM node:8.7.0-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# start app
CMD ["npm", "start"]