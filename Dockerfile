FROM node:16-alpine
RUN npm i -g http-server 
RUN ["mkdir", "/build"]
WORKDIR ./build
COPY . .
EXPOSE 8080
CMD npx http-server .