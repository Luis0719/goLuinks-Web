FROM node:15.8.0 as builder
WORKDIR /usr/src/app
COPY . /usr/src/app

# There's some dependency tree error with npm
# and legacy-peer-deps seems to fix it
RUN npm config set legacy-peer-deps true
RUN npm install
CMD [ "npm", "run", "start:dev" ]
EXPOSE 3000

