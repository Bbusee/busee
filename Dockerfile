FROM golang:1.10
WORKDIR $GOPATH/src/github.com/codefresh-contrib/go-sample-app
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8282
CMD ["go-sample-app"]
