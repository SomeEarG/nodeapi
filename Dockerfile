FROM node:boron 

# Create app directory 
RUN mkdir -p /Users/samirgovani/Projects/JS/app 
WORKDIR /Users/samirgovani/Projects/JS/app

# Install app dependencies 
COPY package.json /Users/samirgovani/Projects/JS/app
RUN npm install 

# Bundle app source 
COPY . /Users/samirgovani/Projects/JS/app

EXPOSE 8080

CMD ["npm","start"]



