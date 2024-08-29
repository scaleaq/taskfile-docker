FROM golang:alpine AS build

ARG TASKFILE_VERSION=latest

RUN go install github.com/go-task/task/v3/cmd/task@${TASKFILE_VERSION}

FROM gcr.io/distroless/static-debian12 AS final

COPY --from=build /go/bin/task /

ENTRYPOINT [ "/task" ]