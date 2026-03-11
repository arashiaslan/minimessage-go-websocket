FROM golang:1.22.2-alpine

WORKDIR /app

# install git (kadang dibutuhkan go mod)
RUN apk add --no-cache git

# copy dependency dulu supaya cache docker optimal
COPY go.mod go.sum ./

RUN go mod download

# copy source
COPY . .

# build binary
RUN go build -o simple-messaging-app .

# expose port
EXPOSE 4000
EXPOSE 8080

# run app
CMD ["./simple-messaging-app"]