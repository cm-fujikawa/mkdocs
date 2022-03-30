FROM alpine:3.15.3

WORKDIR /document
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install --upgrade pip && \
    pip3 install mkdocs mkdocs-material

EXPOSE 8000
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
