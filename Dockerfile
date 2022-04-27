FROM golang:1.8 AS build
WORKDIR /app
COPY main.go /app
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go build  -ldflags '-w -s' -a -installsuffix cgo -o desafio-go

FROM scratch
COPY --from=build /app .
CMD ["./desafio-go"]