FROM bitnami/minideb:stretch

RUN install_packages runit busybox-syslogd opendkim opendkim-tools openssl

COPY ./runsvdir-start /usr/local/sbin/runsvdir-start
COPY ./etc /etc

ENTRYPOINT ["/usr/local/sbin/runsvdir-start"]
