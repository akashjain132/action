FROM alpine:3.19.1

RUN wget -O go.tgz https://go.dev/dl/go1.22.0.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf go.tgz

RUN mkdir -p /usr/local/go/src/action

WORKDIR /usr/local/go/src/action

ADD . .

RUN export PATH=$PATH:/usr/local/go/bin

RUN /usr/local/go/bin/go build main.go

ENTRYPOINT ["./main"]
