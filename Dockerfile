FROM golang:1.16

WORKDIR /app
COPY go.mod .
COPY main.go .
RUN go build -o /runme

EXPOSE 8080
CMD [ "/runme" ]