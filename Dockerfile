FROM golang:1.11.3-alpine3.8 as builder

WORKDIR /app

COPY . /app

RUN go build -o gin-server

FROM alpine:3.8

COPY --from=builder /app/gin-server /app/gin-server

EXPOSE 8080
CMD ["/app/gin-server"]