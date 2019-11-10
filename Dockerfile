FROM golang:1.13-stretch

WORKDIR /root
COPY ./install-kubebuilder.sh ./install-kubebuilder.sh

RUN ./install-kubebuilder.sh
ENV PATH="/usr/local/kubebuilder/bin:${PATH}"