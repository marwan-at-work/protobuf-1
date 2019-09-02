FROM golang:1.12

RUN mkdir /app

COPY . /app

WORKDIR /app/protoc-gen-go

RUN GO111MODULE=on go build -o=protoc-gen-go

ENTRYPOINT [ "/app/protoc-gen-go/protoc-gen-go" ]
