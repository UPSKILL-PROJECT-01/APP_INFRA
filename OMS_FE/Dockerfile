FROM node:19
COPY ./OMS-FE /app/angularApp


RUN apt update -y && \
    apt upgrade -y && \
    apt install -y npm git

# RUN mkdir -p /app/angularApp
WORKDIR /app/angularApp
# WORKDIR /app/angularApp/OMS-FE


RUN npm install -g @angular/cli && \
    npm install && 	npm install --save-dev @types/node

# Set environment variables from the .env file
ENV NODE_ENV=production

EXPOSE 4200

ENTRYPOINT [ "ng", "serve", "--host", "0.0.0.0" ]