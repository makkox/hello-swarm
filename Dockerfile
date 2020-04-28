FROM centos:7
ENV JAVA_OPTIONS -Xmx512m

RUN yum install -y --noplugins java-1.8.0-openjdk-headless && \
    yum clean all --noplugins -y && \
    useradd wildfly && \
    mkdir -p /opt/app-root/bin

ADD hello-swarm.jar /opt/app-root/bin
COPY run-app.sh /opt/app-root/bin

RUN chown -R wildfly:wildfly /opt/app-root && \
    chmod -R 700 /opt/app-root

EXPOSE 8080
USER wildfly

CMD /opt/app-root/bin/run-app.sh
