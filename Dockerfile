FROM node:4.8.4-wheezy

RUN mkdir -p /src

WORKDIR /src

COPY ./package.json /src/package.json

RUN npm install --production

COPY . /src

ENV PORT 8080

EXPOSE 8080

CMD ["npm", "start"]