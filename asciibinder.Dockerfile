FROM registry.access.redhat.com/ubi8/ruby-27

ENV LANG=en_US.UTF-8

USER root

RUN gem install listen ascii_binder && yum clean all

RUN git config --system --add safe.directory '*'

WORKDIR /src

CMD ["/bin/bash"]
