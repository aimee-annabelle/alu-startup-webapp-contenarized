FROM node:20-alpine

# Create app directory
WORKDIR /var/www/mitodo

# Bundle app source
COPY . .

# Install app dependencies
RUN npm install

EXPOSE 8080
CMD [ "node", "server.js" ]