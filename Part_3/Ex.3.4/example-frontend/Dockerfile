FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY . ./

EXPOSE 5000

RUN apt-get update  && \
	apt-get -y upgrade && \
	apt-get -y install curl && \
	curl -sL https://deb.nodesource.com/setup_16.x | bash  && \
	apt install -y nodejs && \
	npm install && \
	npm install -g serve && \
	npm run build && \
    apt-get purge -y --auto-remove curl && \
	rm -dr node_modules && \
	rm -dr src && \
	rm -rf /var/lib/apt/lists/* && \
	useradd -m appuser

USER appuser

CMD serve -s -l 5000 build

# Build with command: docker build -t frontend-3.4 . 

# Run with command: docker run -d -ti -p 5000:5000 frontend-3.4