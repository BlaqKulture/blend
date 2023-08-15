FROM node:alpine

WORKDIR /app

COPY . .

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]