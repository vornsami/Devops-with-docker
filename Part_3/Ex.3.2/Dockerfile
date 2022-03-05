FROM docker:git
WORKDIR /usr/src/app
COPY simple-build-service.sh ./simple-build-service.sh
RUN apk add bash
ENTRYPOINT ["bash", "/usr/src/app/simple-build-service.sh"]

# run with command docker run -rm -it -v VOLUME -e "USERNAME=your_username" -e "PASSWORD=your_password" vornsami/simple-build-service:latest GITHUBUSER REPOSITORY SUBDIRECTORY
# VOLUME depends on your operating system, on Windows systems "//var/run/docker.sock://var/run/docker.sock" worked for me.
# SUBDIRECTORY is optional.