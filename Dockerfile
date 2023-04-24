FROM golang:1.20.3-alpine

RUN mkdir /app

ADD . /app
WORKDIR /app

RUN go clean --modcache
RUN go build -o main .

EXPOSE 4000

CMD ["/app/main"]

