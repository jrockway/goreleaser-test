FROM golang:1.15 AS build
WORKDIR /src
COPY go.mod go.sum /src/
RUN go mod download

COPY . /src/
RUN CGO_ENABLED=0 go build -o goodevening .

FROM gcr.io/distroless/static-debian10
WORKDIR /
COPY --from=build /src/goodevening /go/bin/goodevening
CMD ["/go/bin/goodevening"]
