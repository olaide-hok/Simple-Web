# Use or specifying an existing docker image as a base
FROM node:14-alpine

# Specify working directory
WORKDIR /usr/app

# Dowload and install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Tell the image what to do when it starts as a container
CMD ["npm", "start"]