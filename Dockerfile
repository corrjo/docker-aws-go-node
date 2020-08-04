FROM golang:1.13.1
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt update && apt install -y \
        zip \
        bc \
        jq \
        awscli \
        nodejs
RUN go get -u github.com/onsi/ginkgo/ginkgo
RUN rm -rf /var/lib/apt/lists/*
