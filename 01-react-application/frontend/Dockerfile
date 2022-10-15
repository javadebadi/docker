FROM node:18-slim

WORKDIR /client/

COPY package.json /client/
COPY . /client/

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]