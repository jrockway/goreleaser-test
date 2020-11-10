FROM golang:1.15 AS build
WORKDIR /src
COPY go.mod go.sum /src/
RUN go mod download

COPY . /src/
RUN CGO_ENABLED=0 go install ./cmd/goodevening

FROM gcr.io/distroless/static-debian10
WORKDIR /
COPY --from=build /go/bin/goodevening /go/bin/goodevening
CMD ["/go/bin/goodevening"]
