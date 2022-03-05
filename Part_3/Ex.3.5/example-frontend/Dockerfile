FROM node:16.14.0-alpine3.15
WORKDIR /usr/src/app
COPY . ./

EXPOSE 5000

RUN npm install && \
	npm install -g serve && \
	npm run build && \
    rm -r node_modules && \
	rm -r src && \
	adduser -D appuser

USER appuser

CMD serve -s -l 5000 build

# Build with command: docker build -t frontend-3.5 . 

# Run with command: docker run -d -ti -p 5000:5000 frontend-3.5