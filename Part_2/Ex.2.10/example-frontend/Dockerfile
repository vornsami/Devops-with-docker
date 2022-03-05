FROM node:12.22.10-alpine
WORKDIR /usr/src/app
COPY . ./

EXPOSE 5000

RUN npm install && npm install -g serve

RUN npm run build

CMD serve -s -l 5000 build

# Build with command: docker build -t frontend-2.10 . 

# Run with command: docker run -d -ti -p 5000:5000 frontend-2.10