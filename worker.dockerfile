FROM golang:1.10

RUN mkdir -p /go/src/github.com/yusufsyaifudin/go-kafka-example 
ADD . /go/src/github.com/yusufsyaifudin/go-kafka-example/
WORKDIR /go/src/github.com/yusufsyaifudin/go-kafka-example
RUN go get -u github.com/golang/dep/cmd/dep
RUN dep ensure -v
RUN go build -o worker -i cmd/worker/main.go

CMD ["/go/src/github.com/yusufsyaifudin/go-kafka-example/worker"]
