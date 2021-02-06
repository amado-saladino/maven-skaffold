#! /bin/bash

# url: https://skaffold.dev/docs/install/
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
install skaffold /usr/local/bin/

docker run -d -p 5000:5000 --restart=always --name registry registry:2

docker build -t localhost:5000/sample-app -f skaffold-demo/Dockerfile .