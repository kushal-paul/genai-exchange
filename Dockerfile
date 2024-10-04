FROM node:18.13.0-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY . ./

RUN npm ci --only=production
# Run application
CMD [ "npm", "start"]
ENTRYPOINT [ "node", "/build/static/js/main.26f467d2.js" ]
#CMD ["serve", "-s", "build", "-l", "3000"]
