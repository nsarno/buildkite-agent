FROM buildkite/agent:ubuntu-docker

RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa -N '' && \
    cat /root/.ssh/id_rsa.pub
