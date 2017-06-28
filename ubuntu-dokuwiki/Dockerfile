FROM ubuntu-base

MAINTAINER Dan Sullivan (dansullivan@gmail.com)

RUN apt-get install -y s3fs s3cmd
RUN apt-get install -y apache2
RUN apt-get install -y lsof
RUN apt-get install -y vim
RUN apt-get install -y anacron

#These were the ones there before.
#COPY httpd-foreground /usr/local/bin/
#EXPOSE 80
#RUN echo $PATH
#CMD ["httpd-foreground"]

COPY dokuwiki.sh /usr/local/bin/
EXPOSE 80
RUN echo $PATH
CMD ["dokuwiki.sh"]
