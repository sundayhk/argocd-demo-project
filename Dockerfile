FROM golang:1.23-alpine3.19 as builder

WORKDIR /app

#COPY go.mod go.sum ./
COPY . .

ENV GOPROXY=https://goproxy.cn

#RUN go mod download
RUN go build -o gin-server .

FROM alpine:3.8

COPY --from=builder /app/gin-server /app/gin-server

EXPOSE 8080