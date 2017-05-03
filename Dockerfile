FROM alpine:3.4

#Sudo apt-get install 
RUN apk update && apk add --no-cache \
    bash \
    curl \
    nodejs=6.7.0-r0

# Create app directory 
RUN mkdir -p /app/nodeapi  
WORKDIR /app/nodeapi

# Install app dependencies 
COPY package.json .
RUN npm install 

# Bundle app source 
COPY . .

EXPOSE 8080

CMD ["npm","start"]



