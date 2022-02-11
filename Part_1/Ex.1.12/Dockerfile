FROM node:12.22.10-alpine
WORKDIR /usr/src/app
COPY . ./

RUN npm install

RUN npm run build
RUN npm install -g serve

CMD serve -s -l 5000 build

# Build with command: docker build -t frontend-12 . 

# Run with command: docker run -d -ti -p 5000:5000 frontend-12