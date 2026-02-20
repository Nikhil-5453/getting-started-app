FROM node:24-alpine
LABEL Maintainer="Nikhil"
WORKDIR /apps
COPY . .
RUN npm install --omit=dev
CMD [ "node", "src/index.js" ]
EXPOSE 3000