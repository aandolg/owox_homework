FROM aandolg/centos7_systemctl:1.0

RUN yum install -y epel-release &&\
    yum install -y nginx &&\
    yum clean -y all &&\
    systemctl enable nginx &&\
    mkdir -p /usr/share/nginx/html

#ENV BASH_ENV=${CONTAINER_SCRIPTS_PATH}/scl_enable \
#    ENV=${CONTAINER_SCRIPTS_PATH}/scl_enable \
#    PROMPT_COMMAND=". ${CONTAINER_SCRIPTS_PATH}/scl_enable"

ADD config /

RUN chmod 777 /usr/bin/container-entrypoint /usr/bin/nginx18  &&\ 
    ln -s /usr/bin/container-entrypoint /

COPY src/. /usr/share/nginx/html/.

EXPOSE  80

#USER nginx

ENTRYPOINT ["container-entrypoint"]
CMD [ "nginx18" ]

