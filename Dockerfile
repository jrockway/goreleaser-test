FROM gcr.io/distroless/static-debian10
WORKDIR /
COPY goodevening /go/bin/goodevening
CMD ["/go/bin/goodevening"]
