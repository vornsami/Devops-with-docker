FROM golang:rc-buster
WORKDIR /usr/src/app
COPY . ./
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN useradd -m appuser
USER appuser

CMD ./server

# Build with command: docker build -t backend-3.3 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-3.3