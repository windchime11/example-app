FROM node:10.9.0

WORKDIR /usr/src/app
COPY package.json package.json
RUN npm install

EXPOSE 8000
COPY . .
CMD npm start

