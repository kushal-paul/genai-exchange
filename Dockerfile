FROM node:18.13.0-alpine
WORKDIR /tmp
COPY package.json /tmp/
RUN npm config set registry http://registry.npmjs.org/  && npm install serve -g

WORKDIR /usr/src/app
COPY . /usr/src/app/
RUN cp -a /tmp/node_modules /usr/src/app/
# Run application
#CMD [ "npm", "start"]

CMD ["serve", "-s", "build", "-l", "3000"]
