#!/bin/bash

if [ ! -z $1 ] && [ ! -z $2 ]
then
	if [ ! -z $USERNAME ] && [ ! -z $PASSWORD ]
	then
		echo 'Logging in...'
		echo $PASSWORD | docker login --username $USERNAME --password-stdin 
	fi

	git clone https://github.com/$1/$2.git
	if [ ! -z $3 ]
	then
		docker build -t vornsami/simple-build-service:$1-$2-$3 ./$2/$3
		rm -rf ./$2
		docker push vornsami/simple-build-service:$1-$2-$3

	else
		docker build -t vornsami/simple-build-service:$1-$2 ./$2
		rm -rf ./$2
		docker push vornsami/simple-build-service:$1-$2
	fi
	rm -rf ./$2
	docker image push vornsami/simple-build-service:$1-$2
else
	echo 'Usage: simple-build-service.sh GITHUBUSER REPOSITORY SUBDIRECTORY. Subdirectory is optional.'
fi
