FROM ubuntu:latest

LABEL com.github.actions.name="c-linter check"
LABEL com.github.actions.description="Lint your code with cppcheck"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="gray-dark"

LABEL repository="https://github.com/tonybaloney/cppcheck-action"

WORKDIR /build
RUN apt-get update
RUN apt-get install -qqy --no-install-recommends \
    cppcheck \
    libncurses-dev \
    libxml2-dev \
    sudo \
    valgrind \
    build-essential \
    libedit-dev \
    libgc-dev \
    libicu-dev \
    libkrb5-dev \
    liblz4-dev \
    libncurses6 \
    libpam-dev \
    libpq-dev \
    libpq5 \
    libreadline-dev \
    libselinux1-dev \
    libssl-dev \
    libxslt1-dev \
    libzstd-dev \
    lsof \
    psmisc \
    gdb \
    strace \
    tmux \
    watch \
    make \
    openssl \
    psutils \
    tmux \
    watch \
    zlib1g-dev

ADD runchecks.sh /entrypoint.sh
COPY . .
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
