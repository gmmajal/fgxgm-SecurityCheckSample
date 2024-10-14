FROM node:22.9.0-alpine

RUN npm install -g npm@latest -g

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
