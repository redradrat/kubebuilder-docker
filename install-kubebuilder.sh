#!/bin/sh

os=$(go env GOOS)
arch=$(go env GOARCH)

curl -sL https://go.kubebuilder.io/dl/2.1.0/${os}/${arch} | tar -xz -C /tmp/
mv /tmp/kubebuilder_2.1.0_${os}_${arch} /usr/local/kubebuilder
echo 'export PATH=$PATH:/usr/local/kubebuilder/bin' >> .bashrc