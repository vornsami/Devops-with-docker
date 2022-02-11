FROM ubuntu:latest
WORKDIR /usr/src/app
RUN apt-get update -y
RUN apt-get install curl -y
RUN echo 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;' >> run.sh
CMD sh run.sh

# Commands:
# docker build . -t curler
# docker run -it curler