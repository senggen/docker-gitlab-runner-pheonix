FROM senggen/gitlab-runner-elixir-centos

RUN rpm -i http://download.fedoraproject.org/pub/epel/beta/7/x86_64/epel-release-7-0.2.noarch.rpm && \
    yum install nodejs && \
    yum clean all

VOLUME ["/etc/gitlab-runner/elixir", "/etc/gitlab-runner"]
ADD run.sh /home
RUN chmod +x /home/run.sh

WORKDIR /home/gitlab-runner
CMD /home/run.sh
