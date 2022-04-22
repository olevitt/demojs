FROM node:16
WORKDIR /usr/src/app
# Copy dependencies list
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy code
COPY *.js ./
EXPOSE 3000
CMD [ "node", "app.js" ]