FROM node:14.3-alpine

WORKDIR /app
COPY package.json .
RUN yarn
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
