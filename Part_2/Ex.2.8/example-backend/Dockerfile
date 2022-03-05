FROM golang:rc-buster
WORKDIR /usr/src/app
COPY . ./
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build
CMD ./server

# Build with command: docker build -t backend-14 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-14