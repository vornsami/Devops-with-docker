FROM node:16.14.0-alpine3.15 AS base
WORKDIR /usr/src/app
COPY . ./

EXPOSE 5000

RUN npm install && \
	npm install -g serve && \
	npm run build

FROM node:16.14.0-alpine3.15
WORKDIR /usr/src/app
COPY --from=base /usr/src/app/build ./

RUN npm install -g serve && \
	adduser -D appuser
USER appuser

CMD serve -s -l 5000 build

# Build with command: docker build -t frontend-3.6 . 

# Run with command: docker run -d -ti -p 5000:5000 frontend-3.6