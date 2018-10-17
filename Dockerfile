FROM centos:7
LABEL maintainer="Starchenko Alex <aando.lg@gmail.com>"

###ENV for nginx version###
ENV nginxversion="1.12.2-1" \
    os="centos" \
    osversion="7" \
    elversion="7_4"

###Install wget openssl sed nginx###
RUN yum install -y wget openssl sed &&\
    yum -y autoremove &&\
    yum clean all &&\
    wget http://nginx.org/packages/$os/$osversion/x86_64/RPMS/nginx-$nginxversion.el$elversion.ngx.x86_64.rpm &&\
    rpm -iv nginx-$nginxversion.el$elversion.ngx.x86_64.rpm 

###Copy config files for nginx###
COPY config/etc/. /etc/.

###Copy source files###
#COPY src/. /usr/share/nginx/html/.

EXPOSE  80

CMD ["nginx"]
