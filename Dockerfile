# Dockerfile example for debian Signal Sciences agent container

FROM httpd:2.4-alpine
MAINTAINER Signal Sciences Corp. 


COPY contrib/index.html /usr/local/apache2/htdocs/index.html
COPY contrib/signalsciences.png /usr/local/apache2/htdocs/signalsciences.png
COPY contrib/sigsci-agent/sigsci-agent /usr/sbin/sigsci-agent
COPY contrib/sigsci-agent/sigsci-agent-diag /usr/sbin/sigsci-agent-diag
COPY contrib/sigsci-module/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY start.sh /app/start.sh

#ADD . /app
<<<<<<< HEAD
RUN apk update && apk --no-cache add apr apr-util ca-certificates openssl curl &&  rm -rf /var/cache/apk/*
RUN chmod +x /usr/sbin/sigsci-agent; chmod +x /usr/sbin/sigsci-agent-diag; chmod +x /app/start.sh 
RUN curl https://dl.signalsciences.net/sigsci-module-apache/1.5.1/alpine/3.6/sigsci-module-apache_1.5.1_x86_64.apk > /app/sigsci-module-apache_1.5.1_x86_64.apk &&  apk add --allow-untrusted /app/sigsci-module-apache_1.5.1_x86_64.apk && rm -rf /app/sigsci-module-apache_1.5.1_x86_64.apk
=======
RUN apk update && apk --no-cache add apr apr-util ca-certificates openssl && rm -rf /var/cache/apk/*

RUN chmod +x /usr/sbin/sigsci-agent; chmod +x /usr/sbin/sigsci-agent-diag; chmod +x /app/start.sh
>>>>>>> 0abb64ef722deb32eeb8edfcef80049348ed5ec6

ENTRYPOINT ["/app/start.sh"]

