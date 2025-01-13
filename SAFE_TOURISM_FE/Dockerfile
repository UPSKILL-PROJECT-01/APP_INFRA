FROM node:19
COPY ./SAFE-TOURISM-FE /app/angularApp


RUN apt update -y && \
    apt upgrade -y && \
    apt install -y npm git

WORKDIR /app/angularApp



RUN npm install -g @angular/cli && \
    npm install && 	npm install --save-dev @types/node

# Set environment variables from the .env file
ENV NODE_ENV=production

EXPOSE 4201

ENTRYPOINT [ "ng", "serve", "--host", "0.0.0.0" ]