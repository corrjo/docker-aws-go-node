FROM golang:1.13.1
RUN apt update && apt install -y \
        zip \
        bc \
        awscli
RUN go get -u github.com/onsi/ginkgo/ginkgo
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs
RUN rm -rf /var/lib/apt/lists/*
