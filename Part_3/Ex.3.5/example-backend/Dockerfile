FROM golang:1.16.14-alpine3.15

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000
WORKDIR /usr/src/app/src
COPY . ./

RUN go build && \
	useradd -m appuser

USER appuser

CMD ./server

# Build with command: docker build -t backend-3.5 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-3.5