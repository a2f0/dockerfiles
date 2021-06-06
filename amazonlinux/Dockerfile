FROM amazonlinux

LABEL maintainer="Dan Sullivan (dansullivan@gmail.com)"

RUN yum update -y
RUN yum install net-tools -y
RUN yum install openssh-clients -y
RUN yum install openssh-server -y
RUN yum install procps -y
RUN yum install sudo  -y
RUN yum install which  -y
RUN chkconfig sshd on
RUN systemctl enable sshd
COPY cloud-init /etc/sudoers.d/
ENTRYPOINT service sshd start && bash
