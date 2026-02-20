FROM node:24-alpine
LABEL Maintainer="Nikhil"
RUN mkdir -p /apps
WORKDIR /apps
COPY . .
RUN npm install --omit=dev
CMD [ "node", "src/index.js" ]
EXPOSE 3000