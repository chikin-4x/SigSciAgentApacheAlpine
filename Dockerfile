# Dockerfile example for debian Signal Sciences agent container

FROM httpd:2.4-alpine
MAINTAINER Signal Sciences Corp. 


COPY contrib/index.html /usr/local/apache2/htdocs/index.html
COPY contrib/signalsciences.png /usr/local/apache2/htdocs/signalsciences.png
COPY contrib/sigsci-agent/sigsci-agent /usr/sbin/sigsci-agent
COPY contrib/sigsci-agent/sigsci-agent-diag /usr/sbin/sigsci-agent-diag
COPY contrib/sigsci-module/mod_signalsciences.so /usr/local/apache2/modules/mod_signalsciences.so
COPY contrib/sigsci-module/httpd.conf /usr/local/apache2/conf/httpd.conf

ADD . /app
RUN apk update && apk --no-cache add apr apr-util ca-certificates openssl && rm -rf /var/cache/apk/*

RUN chmod +x /usr/sbin/sigsci-agent; chmod +x /usr/sbin/sigsci-agent-diag; chmod +x /app/start.sh

ENTRYPOINT ["/app/start.sh"]

