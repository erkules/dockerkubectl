FROM alpine
RUN apk update
RUN apk add curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]
