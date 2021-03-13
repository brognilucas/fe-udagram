FROM beevelop/ionic AS ionic


WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .
RUN ionic build

## Run 
FROM nginx:alpine
COPY www /usr/share/nginx/html
