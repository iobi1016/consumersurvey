FROM node:14

WORKDIR /usr/src/app

#Install app dependencies
COPY package*.json app.js ./
RUN npm install 

#App source

EXPOSE 3000

CMD ["node", "app.js"]
