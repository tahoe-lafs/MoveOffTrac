# Start from the official Go image based on Alpine
FROM golang:1.19.3-alpine

LABEL Description="Trac2Gitea migration tool"

RUN apk --no-cache add gcc libc-dev make

# Parameters for default user:group
ARG uid=1000
ARG user=appuser
ARG gid=1000
ARG group=appgroup

# Add user and group for build and runtime
RUN id ${user} > /dev/null 2>&1 || \
    { addgroup -g "${gid}" "${group}" && adduser -D -h /home/${user} -s /bin/bash -G "${group}" -u "${uid}" "${user}"; }

# Prepare directories
RUN DIRS="/src /app" && \
    mkdir -p ${DIRS} && \
    chown -R ${user}:${group} $DIRS

# Switch to non-root user
USER ${user}

# Inject the source code
#COPY *.go go.* accessor/* importer log markdown /src/

# Download deps, build the app and cleanup the source
WORKDIR /src
#RUN go mod download && \
#    go mod verify

#RUN go build -o /app/trac2gitea -ldflags '-extldflags "-static"' -buildvcs=false -v

# Switch to app directory
#WORKDIR /app

# Run the app by default
#CMD ./trac2gitea
