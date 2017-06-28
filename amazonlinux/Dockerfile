FROM amazonlinux

MAINTAINER Dan Sullivan (dansullivan@gmail.com)

RUN yum update -y
RUN yum install net-tools -y
RUN yum install openssh-clients -y
RUN yum install openssh-server -y
RUN yum install procps -y
RUN yum install sudo  -y
RUN chkconfig sshd on
RUN service sshd start
RUN mkdir -p /home/ec2-user/.ssh/
COPY id_rsa.pub /home/ec2-user/.ssh/authorized_keys
