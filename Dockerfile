FROM node:14-alpine
RUN apk add --no-cache git python3 make g++
Run git clone -q https://github.com/najasoft/todo-app.git
WORKDIR /todo-app
COPY ..
RUN yarn install --production
CMD ["node" , "/src/index.js"]
