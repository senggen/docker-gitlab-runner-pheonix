FROM senggen/gitlab-runner-elixir-centos

RUN yum install -y nodejs && \
    yum clean all

VOLUME ["/etc/gitlab-runner/elixir", "/etc/gitlab-runner"]
ADD run.sh /home
RUN chmod +x /home/run.sh

WORKDIR /home/gitlab-runner
CMD /home/run.sh
