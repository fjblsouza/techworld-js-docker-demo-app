FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/ubuntu/app

COPY ./app /home/ubuntu/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/ubuntu/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install
RUN npm run test
EXPOSE 8000
# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

