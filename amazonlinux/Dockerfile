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
RUN service sshd start
RUN adduser ec2-user
RUN mkdir -p /home/ec2-user/.ssh
RUN chmod 700 /home/ec2-user/.ssh
COPY id_rsa.pub /home/ec2-user/.ssh/authorized_keys
RUN chown -R ec2-user:ec2-user /home/ec2-user
COPY cloud-init /etc/sudoers.d/
ENTRYPOINT service sshd start && bash
