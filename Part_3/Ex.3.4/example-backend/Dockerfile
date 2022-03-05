FROM ubuntu:18.04
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000
ENV GOPATH=/usr/src/app
ENV PATH="${PATH}:/usr/local/go/bin"
WORKDIR /usr/src/app/src
COPY . ./

RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install curl && \
	curl -O https://storage.googleapis.com/golang/go1.16.14.linux-amd64.tar.gz && \
	tar -xvf go1.16.14.linux-amd64.tar.gz && \
	rm go1.16.14.linux-amd64.tar.gz && \
	mv go ../../../local  && \
	go build && \
	rm -rf ../pkg/* && \
	rm -rf ../../../local/go/* && \
    apt-get purge -y --auto-remove curl && \
	rm -rf /var/lib/apt/lists/* && \
	useradd -m appuser

USER appuser

CMD ./server

# Build with command: docker build -t backend-3.4 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-3.4