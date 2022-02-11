FROM golang:rc-buster
WORKDIR /usr/src/app
COPY . ./

RUN go build

CMD ./server

# Build with command: docker build -t backend-13 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-13