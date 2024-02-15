FROM alpine:3.19.1

RUN apt-get update

RUN wget -O go.tgz https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go.tgz && cd /usr/local/go/src/ 

RUN go build main.go

ENTRYPOINT [ "main" ]
