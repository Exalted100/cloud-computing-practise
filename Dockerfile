FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are copied
# where avalable
COPY package*.json ./
COPY tsconfig.json ./

RUN yarn
COPY . .

EXPOSE 8080
CMD ["yarn", "start"]
