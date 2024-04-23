FROM golang:1.22.2-alpine3.19
WORKDIR /app

COPY go.mod .
COPY main.go .

RUN go get
RUN go build -o bin .
ENTRYPOINT ["/app/bin"]
