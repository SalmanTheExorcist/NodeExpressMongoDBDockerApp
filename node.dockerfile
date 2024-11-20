# Start by specifying the base image
FROM        node:alpine

# Specifying Label is optional but recommended
LABEL       author="Demonically Possessed TheExorcist"

# Specifying Environment-Variables
ENV         NODE_ENV=production
ENV         PORT=3000

# Specify the Working-Directory inside the running container
WORKDIR     /var/www

# Specifying to copy package*.json to /var/www directory 
COPY        package*.json ./
RUN         npm install

COPY        . ./

EXPOSE      ${PORT}

ENTRYPOINT [ "npm", "start" ]



