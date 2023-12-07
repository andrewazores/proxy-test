FROM registry.access.redhat.com/ubi8/nginx-122:1-32.1697448072

COPY nginx.conf /etc/nginx/nginx.conf.template

CMD ["/bin/sh", "-c", "envsubst '$HOSTNAME $PORT $ROOT_PATH $SVC_HOST $SVC_PORT $UPSTREAM' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && exec nginx"]
