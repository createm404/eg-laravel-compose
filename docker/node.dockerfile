FROM node:21-alpine3.18

WORKDIR /var/www/src

CMD [ "npm", "install" ]