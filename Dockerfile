FROM node:18
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY yarn.lock ./
RUN yarn

#RUN openssl req  -nodes -new -x509 -sha1 -subj '/CN=energysmartwaterheater.com' -keyout ./key.key -out ./cert.crt -days 3650
# If you are building your code for production
# RUN npm ci --omit=dev
# Bundle app source
COPY . .
EXPOSE 8001
CMD [ "node", "index.js" ]