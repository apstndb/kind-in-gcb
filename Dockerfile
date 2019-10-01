FROM gcr.io/cloud-builders/docker
RUN add-apt-repository ppa:longsleep/golang-backports && \
    apt-get update && \
    apt-get install -y golang-go

RUN GO111MODULE="on" go get sigs.k8s.io/kind@v0.5.1
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
              chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["/bin/bash"]

ENV PATH /root/go/bin:$PATH
