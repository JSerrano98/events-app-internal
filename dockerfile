# use base image for NodeJS
FROM node:14-alpine

#copy application code.
COPY . /app/

#change the working directory
WORKDIR /app

# Install dependencies
RUN npm install 

#start the express app
CMD ["node", "server.js"]