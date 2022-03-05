FROM golang:1.16.14-alpine3.15 AS base

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000
WORKDIR /usr/src/app/src
COPY . ./

RUN go build

FROM scratch
COPY --from=base /bin/sh ./bin/
COPY --from=base /lib/ ./lib/
COPY --from=base /etc/passwd ./etc/
COPY --from=base /usr/sbin/adduser ./usr/sbin/

WORKDIR /usr/src/app
COPY --from=base /usr/src/app/src/server ./

RUN adduser -D appuser
USER appuser

CMD ./server

# Build with command: docker build -t backend-3.6 . 

# Run with command: docker run -d -ti -p 8080:8080 backend-3.6