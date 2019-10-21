FROM alpine
apk update
apk add curl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.2/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["/usr/local/bin/kubectl"]
